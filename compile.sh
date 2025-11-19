#!/bin/bash

# Name of the main file (without extension)
MAIN_FILE="main"

echo "Compiling $MAIN_FILE.tex..."

# 1. First Compilation (Generate .aux, .toc, etc.)
pdflatex -interaction=nonstopmode $MAIN_FILE.tex

# 2. Run BibTeX (if needed, currently commented out in main.tex but good to have)
# bibtex $MAIN_FILE

# 3. Second Compilation (Update references and TOC)
pdflatex -interaction=nonstopmode $MAIN_FILE.tex

# 4. Third Compilation (Ensure all cross-references are correct)
pdflatex -interaction=nonstopmode $MAIN_FILE.tex

echo "Compilation finished."
