# Latexmk configuration file
# This file configures latexmk to put PDFs in output/ and intermediate files in build/

# Get today's date in YYYY-MM-DD format
use POSIX qw(strftime);
my $date = strftime "%Y-%m-%d", localtime;

# Set the output directory for PDF files
$out_dir = 'output';

# Set the auxiliary directory for intermediate files (.aux, .log, .fls, .fdb_latexmk files)
$aux_dir = 'build';

# Ensure both directories exist
system("mkdir -p output build");

# Set custom PDF name with date prefix
$jobname = $date . '_alyssa_peck_resume';

# PDF generation mode (1 = pdflatex, 4 = lualatex, 5 = xelatex)
$pdf_mode = 1;

# Always try to generate PDF
$force_mode = 1;

# Clean up intermediate files but keep the PDF
$clean_ext = "aux log fls fdb_latexmk synctex.gz nav out snm toc vrb bbl blg idx ind ilg glo gls glg ist";

# Bibtex/biber settings
$bibtex_use = 1.5;

# Disable continuous mode to prevent hanging
$preview_continuous_mode = 0;

# File extensions to clean
push @generated_exts, 'figlist', 'makefile', 'fls', 'fdb_latexmk', 'dpth', 'md5', 'auxlock';

# Post-compilation hook to ensure PDF is in the right place with the right name
$success_cmd = 'if [ -f "build/' . $date . '_alyssa_peck_resume.pdf" ]; then cp "build/' . $date . '_alyssa_peck_resume.pdf" "output/' . $date . '_alyssa_peck_resume.pdf" && echo "PDF moved to output/' . $date . '_alyssa_peck_resume.pdf"; fi';
