# Resume Build Setup

This resume is configured to automatically generate PDFs with date prefixes in the `output/` directory.

## Files Structure

- `output/` - Contains the final PDF with today's date prefix (e.g., `2025-07-22_alyssa_peck_resume.pdf`)
- `build/` - Contains intermediate LaTeX build files (`.aux`, `.log`, etc.)
- `alyssa_peck_resume.tex` - Main LaTeX source file

## Building

### Using VS Code LaTeX Workshop Extension
The project is configured with VS Code settings to automatically use the correct output directories and file naming.


## Configuration Files

- `.latexmkrc` - Main build configuration with date prefixes
- `.vscode/settings.json` - VS Code LaTeX Workshop extension settings
- `organize_output.sh` - Script to move PDFs from root to output directory

The build system automatically:
1. Adds today's date as a prefix to the PDF filename
2. Places the PDF in the `output/` directory
3. Keeps intermediate files in the `build/` directory
4. Works with both command-line builds and VS Code extensions

## to install

```bash
sudo apt update && sudo apt install -y latexmk texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra
```