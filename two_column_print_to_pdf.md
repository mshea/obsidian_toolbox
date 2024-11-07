# Print to Two-Column PDF with Obsidian

For game notes, I like to print my notes on a single sheet of paper in two columns.

Using a custom stylesheet with Obsidian, you can customize the PDF output of Obsidian's PDF export to support this two-column format.

Here are the steps:

1. Open a text editor somewhere and paste in the following stylesheet:

```
@media print {
    .markdown-preview-view {
        column-count: 2;
        column-gap: 2em;
		font-family: "Computer Modern";
		line-height: 1.2em;
    }
}
```

2. Save this file to your desktop as "two-column.css".
3. Open your Obsidian settings.
4. Go to "Appearance" and open it.
5. Scroll to the bottom and look for "CSS snippets".
6. Click the folder icon. This will open up the folder in your desktop OS.
7. Drag the "two-column.css" file to the snippets folder. The file should disappear as Obsidian absorbs it into its warm embrace.
8. The snippet should appear as an option under your existing snippets. Toggle it on.

Now, anytime you print to PDF, it will print a two-column version of the file. You can change the font-family and add other styles as you like. I found the ones in the script work best for me. Use the scaling option when you print to PDF to maximize it to a single page. If it ends up too small, your simply have too many notes. Just cut a few and it'll be perfect.

See two_column_output_example.pdf for an example of the PDF output from this setup.
