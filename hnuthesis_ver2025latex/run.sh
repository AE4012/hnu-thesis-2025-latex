#!/usr/bin/env bash

set -e

echo "==> Compiling LaTeX project..."

# 编译（所有文件进入 output/）
latexmk -xelatex -shell-escape -outdir=output main.tex

echo "==> Copying PDF to root directory..."

# 复制 PDF 到根目录
cp output/main.pdf ./main.pdf

echo "==> Done."