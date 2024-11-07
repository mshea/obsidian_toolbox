# Obsidian Toolbox

This repo contains various projects tied to [Obsidian](https://obsidian.md).

## Forge of Foes Jelly Snippits

File: forge_of_foes_jelly_snippits.txt

This text file contains snippits formatted for the [Jelly Snippits](https://github.com/rabirabirara/obsidian-jelly-snippets) Obsidian plugin so you can add Forge of Foes stat lines directly into your Obsidian notes.

For example you can type "fof6" and activate your snippit. I have a command to do it on my phone or you can set space or tab to fill it in by configuring Jelly Snippits. When activated, it drops in a one-line stat block like this: "CR 6 AC/DC 15 HP 112 (84-140) Atk/Prof +7 DPR 41 Atks 3 x 14 (3d6 + 4)". For CRs below 1 use "fof0125" for CR 1/8, "fof025" for CR 1/4, and "fof05" for CR 1/2.

You can reformat this text file to fit any other snippits and you can find the full Forge of Foes stat blocks in JSON for other programmatic purposes at [Crit-Tech's Lazy GM Reference Document repo](https://github.com/crit-tech/LGMRD).

**two_column_print_to_pdf.md**. This file contains instructions for setting up a stylesheet so the Obsidian Print to PDF function exports a nicely formatted two-column printout great for printed game notes. two_column_output_example.pdf is an example output from this technique.

**pandoc_markdown_to_pdf_with_latex**. Is a more in-depth process for setting up a print to PDF. I'm keeping it around but the two-column approach above is easier and just as good.