# [Typst](https://typst.app/) Template for UoS ECS Individual Project

If you have ever suffered with LaTeX, don't!

_Typst is a new markup-based typesetting system that is designed to be as powerful as LaTeX while being much easier to learn and use._

This repository aims to provide an easy-to-use and comprehensive template to use for the write-up of Bachelor's or Master's individual project report.
It aims to follow the most recent (2023-2024) guidelines on the format and compiles to the _"LaTeX-like"_ pdf.

## Features
- Use a single command to begin to generate the whole document
- Or use individual components to customise your report to your needs
- Easy-to-read template enables customisation of styles

## Installation

For detailed installation instructions, please refer to the [official installation guide](https://github.com/typst/typst). Here, we provide basic steps for installing Typst's CLI:

- You can get sources and pre-built binaries from the [releases page](https://github.com/typst/typst/releases).
- Use package managers like `brew` or `pacman` to install Typst. Be aware that the versions in the package managers might lag behind the latest release.
- If you have a [Rust](https://rustup.rs/) toolchain installed, you can also install the latest development version.

Nix and Docker users, please refer to the official installation guide for detailed instructions.

## Usage
- The margins are set to `binding`: `(inside: 1.5in, outside: 1.0in, top: 1.0in, bottom: 1.0in)` for the print quality
- Simply add to your file:
```typ
#import "ecsproject.typ": *

// Use everthning together

#show: doc => use_project(
  title: "My project",
  author: (
    name: "Author name",
    email: none
  ),
  supervisor: (
    name: "Supervisor name",
    email: none
  ),
  examiner: (
    name: "Examiner name",
    email: none
  ),
  date: "Janury 19, 2024",
  program: "BSc Computer Science",
  is_progress_report: false,
  originality_statement: (
    acknowledged: "I have acknowledged all sources, and identified any content taken from elsewhere.",
    resources: "I have not used any resources produced by anyone else.",
    foreign: "I did all the work myself, or with my allocated group, and have not helped anyone else",
    material: "The material in the report is genuine, and I have included all my data/code/designs.",
    reuse: "I have not submitted any part of this work for another assessment.",
    participants: "My work did not involve human participants, their cells or data, or animals."
  ),
  abstract_text: lorem(50),
  acknowledgments_text: lorem(50),
  doc
)
```
- Or use the `template.typ`
- To customise entries
  - `title` - title of your project
  - `author`, `supervisor`, `examiner`: named tuple of `(name, email)` for you, supervisor and second examiner
  - `date` - date in string format
  - `program` the title of your program
  - `is_progress_report` - is it a progress report?
  - `originality_statement` - originality statement confirmations (optional). If not specified, default values are used
  - `abstract_text` - your abstract, simple string text
  - `acknowledgments_text` - acknowledgments, same as above
  - `page_numbering: "1"` - page numbering style (optional)
  - `title_numbering: "1."` - heading numbering style (optional)
- If you need modify the structure of your document, shuffle pages around, you can use individual components as demonstrated in `thesis_example.typ`


### Build PDFs locally 
Once you have installed Typst, you can use it like this:
```sh
# Creates `thesis.pdf` in working directory.
typst compile template.typ

# Creates PDF file at the desired path.
typst compile thesis.typ path/to/output.pdf
```

You can also watch source files and automatically recompile on changes. This is
faster than compiling from scratch each time because Typst has incremental
compilation.
```sh
# Watches source files and recompiles on changes.
typst watch template.typ
```

## Working with the Typst Web Editor

If you prefer an integrated IDE-like experience with autocompletion and instant preview, the Typst web editor allows you to import files directly into a new or existing document. Here's how you can do this:

1. Navigate to the [Typst Web Editor](https://typst.app/).
2. Create a new blank document.
3. Click on "File" on the top left menu, then "Upload File".
4. Select all .typ and .bib files along with the figures provided in this template repository.

**Note:** You can select multiple files to import. The editor will import and arrange all the files accordingly. Always ensure you have all the necessary .typ, .bib, and figures files you need for your document.


---
## Further Resources

- [Typst Documentation](https://typst.app/docs/)
- [Typst Guide for LaTeX Users](https://typst.app/docs/guides/guide-for-latex-users/)
- [Typst VS Code Extension (unofficial)](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp)

## Contribution
I am graduating in 2024 from the university, and aware that the guidelines may change, feel free to open an issue or PR to amend the template.