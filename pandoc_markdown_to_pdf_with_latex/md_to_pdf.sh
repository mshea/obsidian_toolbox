# Get the selected file path from the previous action
file="$1"

# Set the output path to the desktop
output_path="$HOME/Desktop"

# Generate the PDF using pandoc
/usr/local/bin/pandoc "$file" --pdf-engine=/Library/TeX/texbin/pdflatex -s --template=/Users/username/Documents/latex_templates/md_to_pdf.tex -o "$output_path/output.pdf" --variable columns=2

# Check if the PDF was generated successfully
if [ "$?" -eq 0 ]; then
    echo "PDF generated successfully at $output_path/output.pdf"
else
    echo "Error: Failed to generate PDF"
    exit 1
fi
