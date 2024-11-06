# Markdown to PDF with Pandoc and Latex

This project contains files to convert markdown files to a two-column PDF suitable for printing on a single page.

It's intended to help someone writing notes for RPG games using the steps from [Return of the Lazy Dungeon Master](https://shop.slyflourish.com/products/return-of-the-lazy-dungeon-master) in Markdown and export it to a nice two-column single-page sheet so you can print it and put it in your trapper keeper.

This is a pretty complicated setup. You'll want some experience with shell scripting, markdown, latex, and Automator to get it to work. There are many other ways to implement this setup beyond the one below. Use what ideas and materials here you wish to get your own setup working.

## Requirements

This project requires a few different components:

- [Pandoc](https://github.com/jgm/pandoc/blob/main/INSTALL.md).
- A Latex interpreter for your machine such as [MacTex](https://tug.org/mactex/).
- [Automator](https://en.wikipedia.org/wiki/Automator_(macOS)) for the Mac.

I don't use this on a PC so I can't offer the PC equivalent but I know Pandoc is available for Windows so there's likely a similar process that works for PC.

This project contains several different components:

- **"example.md"**. an example markdown file.
- **md_to_pdf.tex**. The Latex template for exporting markdown to PDF.
- **md_to_pdf.sh**. The Pandoc batch script.
- **md_to_pdf.app**. The automator file.
- **output.pdf**. An example of what the output looks like using the included latex template.

## YMMV

This is a pretty complicated setup so I can't guarantee it's easy to use but enough people have asked me about it that I wanted to make it available here.

When I first set this up I used Chat GPT to help me out so below you'll find the instructions I received.

Good luck!

## Longer Instructions

Here are the instructions for creating an Automator script on macOS that opens a file, and sends it to a Pandoc shell script for converting a Markdown file to PDF using a LaTeX template:

### Prerequisites

- Ensure you have Pandoc installed. You can install it via Homebrew with `brew install pandoc`.
- Install LaTeX. This is necessary for PDF generation. You can install MacTeX with `brew install --cask mactex`.

### Creating the Pandoc Shell Script

1. Create a new shell script file, `convert_to_pdf.sh`, in your desired directory.
2. Open a text editor and add the following script:

```bash
#!/bin/bash
pandoc "$1" -o output.pdf --template=your-template.latex
```
Replace `your-template.latex` with the path to your LaTeX template file.

3. Save the script and make it executable:
```bash
chmod +x convert_to_pdf.sh
```

### Creating the Automator Script

1. Open Automator on your Mac.
2. Choose "Application" as the type for your new Automator document.
3. Drag and drop "Run Shell Script" from the Actions pane into the workflow.
4. Set "Pass input" to "as arguments".
5. In the shell script box, enter the full path to your shell script, passing the argument:
```bash
/path/to/convert_to_pdf.sh "$@"
```
Replace `/path/to/convert_to_pdf.sh` with the actual path to your shell script.

6. Save the Automator Application. Choose a convenient location and name it, e.g., `MarkdownToPDF.app`.

### Usage

To convert a Markdown file to PDF:
- Drag and drop the Markdown file onto the `MarkdownToPDF.app` icon.
- The script will process the file and generate a PDF named `output.pdf` in the same directory as the shell script.

Include these instructions in your GitHub repository to guide users through setting up the workflow.

### Using the Shell Commands Plugin for Obsidian

You can also use the [Shell Commands](https://github.com/Taitava/obsidian-shellcommands) plugin for Obsidian to export markdown files to PDF.

You'll still need Pandoc, MacTeX, and the Latex template and above.

Install the Shell Commands plugin and create a new shell script.

Use the following shell script, replacing paths with your own when necessary.

```
/usr/local/bin/pandoc {{file_path:absolute}} --pdf-engine=/Library/TeX/texbin/pdflatex -s --template=/your/template/path/session_notes_template.tex -o "/your/output/path/output.pdf" --variable columns=2
```

Give it an alias name and, in the shell script's configuration, turn it on for the File Menu so you can right click on a file and export to PDF.



