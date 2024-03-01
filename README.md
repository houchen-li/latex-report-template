<div align="center">

# LaTeX Report Template

![LaTeX](https://img.shields.io/badge/LaTeX-Report-purple)
![XeLaTeX](https://img.shields.io/badge/engine-XeLaTeX-green)

A LaTeX template for university laboratory reports, featuring New Computer Modern
fonts with full CJK (Chinese) support via XeLaTeX and biblatex for bibliography.

</div>

## Features

- **Fonts**: New Computer Modern (serif, sans, math) + Source Han (CJK serif, sans)
- **CJK Support**: xeCJK with bundled font files (git submodule)
- **Bibliography**: biblatex + biber
- **Nomenclature**: nomencl package for symbol tables
- **Build**: latexmk with XeLaTeX engine

## Usage

```bash
# Clone with fonts submodule
git clone --recurse-submodules git@github.com:houchen-li/latex-report-template.git

# Build
latexmk main.tex

# Clean
latexmk -C
```

## Project Structure

```
├── main.tex          # Main document
├── .latexmkrc        # latexmk configuration
├── data/             # Chapter content files
│   ├── 00-titlepage.tex
│   ├── 00-abstract.tex
│   ├── 00-nomenclature.tex
│   ├── 01-chapter01.tex
│   ├── 02-chapter02.tex
│   ├── 03-chapter03.tex
│   ├── 04-chapter04.tex
│   └── 05-acknowledge.tex
├── ref/
│   └── refs.bib      # Bibliography
├── figures/          # Figures directory
└── fonts/            # Font files (git submodule)
```

## License

CC BY-NC-SA 3.0
