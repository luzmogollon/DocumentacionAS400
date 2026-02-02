#!/bin/bash
# Script para generar PDF desde el archivo Markdown

set -e

MARKDOWN_FILE="Luz_Maria_Mogollon.md"
PDF_FILE="Luz_Maria_Mogollon.pdf"

if [ ! -f "$MARKDOWN_FILE" ]; then
    echo "Error: No se encontró el archivo $MARKDOWN_FILE"
    exit 1
fi

echo "Generando PDF desde $MARKDOWN_FILE..."

# Generar PDF usando pandoc con XeLaTeX para soporte Unicode
pandoc "$MARKDOWN_FILE" \
    -o "$PDF_FILE" \
    --pdf-engine=xelatex \
    -V geometry:margin=1in \
    -V lang=es \
    --toc \
    --toc-depth=2

echo "✓ PDF generado exitosamente: $PDF_FILE"
ls -lh "$PDF_FILE"
