#!/bin/sh
#
# This script is a wrapper for clang-format to handle pragmas
# by temporarily turning them into comments.

# 1. Read from stdin, turn pragmas into comments
# 2. Pipe to clang-format (which will find the project .clang-format file)
# 3. Pipe to final sed to turn comments back into pragmas
sed 's/#pragma omp/\/\/#pragma omp/g; s/#pragma simd/\/\/#pragma simd/g' | \
clang-format | \
sed 's/\/\/ *#pragma omp/#pragma omp/g; s/\/\/ *#pragma simd/#pragma simd/g'
