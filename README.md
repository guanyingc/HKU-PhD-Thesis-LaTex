HKU CS PhD Thesis Sample
======================
> This repo contains the LaTex files used for building my PhD thesis. The LaTex template is borrowed from the Cambridge University Engineering Department (CUED) PhD Thesis Template.

Title: Single View Analysis of Non-Lambertian Objects Based on Deep Learning  
Author: Guanying Chen  
The University of Hong Kong, Pokfulam, Hong Kong, 2020.

Overleaf Link: https://www.overleaf.com/read/qjqhttbhsnsb.

## Sample Pages
The compiled PDF can be found in [https://guanyingc.github.io/papers/Chen_HKU_PhD_Thesis_2020.pdf](https://guanyingc.github.io/papers/Chen_HKU_PhD_Thesis_2020.pdf).

<p align="center">
    <img src='images/thesis1.jpg' width="400" >
    <img src='images/thesis2.jpg' width="400" >
    <img src='images/thesis3.jpg' width="400" >
    <img src='images/thesis4.jpg' width="400" >
</p>


## Usage
- Build: 
    ```shell
    make bib
    ```
- Open: 
    ```shell
    make show  # Ubuntu
    make macshow  # Mac OSX
    ```

CUED PhD Thesis Template
========================
> A PhD thesis LaTeX template for Cambridge University Engineering Department.

## Author(s)
*   Krishna Kumar

## License

The MIT License (MIT)

Copyright (c) 2013 Krishna Kumar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

--------------------------------------------------------------------------------

## Features

*   Conforms to the Student Registry PhD dissertation guidelines and CUED PhD guidelines

*   Adaptive Title Page: Title page adapts to title length

*   Print / On-line version: Different layout and hyper-referencing styles

*   Pre-defined and custom fonts (Times / Fourier / Latin Modern) with math support

*   Pre-defined and custom bibliography style support (authoryear / numbered / custom)

*   Custom page styles: 3 Different Header / Footer styles

*   Pre-defined and custom margin size

*   A separate abstract with thesis title and author name, along with the titlepage can be generated by passing the argument `abstract` to the document class.


## Building your thesis

### Using the Make File (Unix/Linux)

The template supports PDF, DVI and PS formats. All three formats can be generated
with the provided `Makefile`.

To build the `PDF` version of your thesis, run:

    make


This build procedure uses `pdflatex` and will produce `thesis.pdf`.

To produce `DVI` and `PS` versions of your document, you should run:


    make BUILD_STRATEGY=latex

This will use the `latex` command to build the document and will produce
`thesis.dvi`, `thesis.ps` and `thesis.pdf` documents. You will need psutils installed

Clean unwanted files

To clean unwanted clutter (all LaTeX auto-generated files), run:

    make clean

__Note__: the `Makefile` itself is take from and maintained at
[here](http://code.google.com/p/latex-makefile/).

### Shell script for PDFLaTeX (Unix/Linux)

Usage: `sh ./compile-thesis.sh [OPTIONS] [filename]`

[option]  compile: Compiles the PhD Thesis

[option]  clean: removes temporary files - no filename required

### Using the Batch file on Windows (PDFLaTeX)

*    Open command prompt and navigate to the directory with the tex file. Run:
    
    `compile-thesis-windows.bat`.

*    Alternatively, double click on `compile-thesis-windows.bat`

-------------------------------------------------------------------------------

## Usage details

### Class Options

The class file, `PhDThesisPSnPDF`, is based on the standard `book` class

It supports the following custom options:

*   `a4paper` (default as per the University guidelines) or `a5paper`: Paper size

*   `11pt` or `12pt`: The University of Cambridge guidelines recommend using a minimum font size of 11pt (12pt is preferred) and 10pt for footnotes. This template also supports `10pt`.

*   `oneside` or `twoside` (default): This is especially useful for printing double side (twoside) or single side.

*   `print`: Supports Print and Online Version with different page margins and hyperlink styles.
    Use `print` in the options to activate Print Version with appropriate margins and page layout and view styles. 
    Leaving the options field blank will activate Online version.

*   `custommargin`: You can alter the margin dimension for both print and online version by using the keyword `custommargin` in the options. Then you can define the dimensions of the margin in the `preamble.tex` file: 

        \ifsetMargin
        \else
        \RequirePackage[left=37mm,right=30mm,top=35mm,bottom=30mm]{geometry} 
        \setFancyHdr
        \fi
    `\setFancyHdr` should be called when using custom margins for proper header/footer dimensions


*   `index`: Including this option builds the index, which is placed at the end of the thesis.

    Instructions on how to use the index can be found [here](http://en.wikibooks.org/wiki/LaTeX/Indexing#Using_makeidx).

    _Note_: the package `makeidx` is used to create the index.
    
*   `abstract`: This option enables only the thesis title page and the abstract with title and author to be printed. 

### Abstract separate

*  A separate abstract with the title of the PhD and the candidate name has to be submitted to the Student Registry. This can be generated using `abstract` option in the document class. Ignore subsequent warnings about skipping sections (if any).

*  To generate the separate abstract and the title page, make sure the following commands are in the `preamble.tex` file: 

        \ifdefineAbstract
        \includeonly{Abstract/abstract}
        \else
        \fi


### Choosing the Fonts

`PhDThesisPSnPDF` currently supports two fonts `Times` and `Latin Modern (default)`.

*   `times`: (The University of Cambridge guidelines recommend using Times). Specifying times option in the document class will use `mathptpx` or `Times` font with Math Support.
*   `fourier`: fourier font with math support
*   `default (empty)`: When no font is specified, `Latin Modern` is used as the default font with Math Support. 
*   `customfont`: Any custom font can be set in preamble by using `customfont` option in the document class. Then the custom font can be loaded in preamble.tex in the line:

		\ifsetFont
		\else 
		\RequirePackage{Your_Custom_Font}
		\fi

### Choosing the Bibliography style

`PhDThesisPSnPDF` currently supports two styles `authoryear` and `numbered (default)`. Citation style has to be set. You can also specify `custombib` style

* `authoryear`: For author-year citation eg., Krishna (2013)

* `numbered`: (Default Option) For numbered and sorted citation e.g., [1,5,2]

* `custombib`: Define your own bibliography style in the `preamble.tex` file.

		\RequirePackage[square, sort, numbers, authoryear]{natbib}

* (Overview of Bibtex-Styles with preview)[http://nodonn.tipido.net/bibstyle.php?]

### Choosing the Page Style

`PhDThesisPSnPDF` defines 3 different page styles (header and footer). The following definition is for `twoside` layout.

* `default (leave empty)`: For Page Numbers in Header (Left Even, Right Odd) and Chapter Name in Header (Right Even) and Section #. Section Name (Left Odd). Blank Footer.

        Header (Even)   : 4                                                 Introduction 

        Header (Odd)    : 1.2 Section Name 		   			                5

        Footer 		    : Empty

* `PageStyleI`: For Page Numbers in Header (Left Even, Right Odd) and Chapter Name next to the Page Number on Even Side (Left Even). Section Number and Section Name and Page Number in Header on Odd Side (Right Odd). Footer is empty. Layout:

        Header (Even)   : 4 | Introduction 

        Header (Odd)    :                         			                1.2 Section Name | 5

        Footer 		    :                               Empty

* `PageStyleII`: Chapter Name on Even Side (Left Even) in Header. Section Number and Section Name in Header on Odd Side (Right Odd). Page numbering in footer. Layout:

        Header (Even)   : Introduction
        
        Header (Odd)    : 			   				                        1.2 Section Name
        
        Footer[centered]:                           	3

### Changing the visual style of chapter headings

The visual style of chapter headings can be modified using the `titlesec` package. Edit the following lines in the `preamble.tex` file.

        \RequirePackage{titlesec}
        \newcommand{\PreContentTitleFormat}{\titleformat{\chapter}[display]{\scshape\Large}
        {\Large\filleft{\chaptertitlename} \Huge\thechapter}
        {1ex}{}
        [\vspace{1ex}\titlerule]}
        \newcommand{\ContentTitleFormat}{\titleformat{\chapter}[display]{\scshape\huge}
        {\Large\filleft{\chaptertitlename} \Huge\thechapter}{1ex}
        {\titlerule\vspace{1ex}\filright}
        [\vspace{1ex}\titlerule]}
        \newcommand{\PostContentTitleFormat}{\PreContentTitleFormat}
        \PreContentTitleFormat

### Custom Settings

*   The depth for the table of contents can be set using: 

        \setcounter{secnumdepth}{3}
	    \setcounter{tocdepth}{3}
    A depth of [3] indicates to a level of `\subsubsection` or #.#.#.#. Default set as 2.

*   To hide sections from appearing in TOC use: `\tochide\section{Section name}` in your TeX files

*   Define custom caption style for figure and table caption in `preamble.tex` using:

        \RequirePackage[small,bf,figurename=Fig.,labelsep=space,tableposition=top]{caption}

*   Bibliography with Author-Year Citation in `preamble.tex`:
	
        \RequirePackage[round, sort, numbers, authoryear]{natbib}


### Nomenclature Definition

* To use nomenclature in your chapters:

        \nomenclature[g-pi]{$\pi$}{ $\simeq 3.14\ldots$}
	        
    The sort keys have prefix. In this case a prefix of `g` is used to denote Greek Symbols, followed by `-pi` or `-sort_key`. Use a `-` to separate sort key from the prefixes. The standard prefixes defined in this class are:

    * `A` or `a`: Roman Symbols

    * `G` or `g`: Greek Symbols

    * `Z` or `z`: Acronyms/Abbreviations

    * `R` or `r`: Superscripts

    * `S` or `s`: Subscripts

    * `X` or `x`: Other Symbols

*   You can change the Title of Nomenclature to Notations or Symbols in the `preamble.tex` using:

        \renewcommand\nomname{Symbols}

## General guidelines
[Why is it important to follow good practices and not get killed by a Velociraptor ;)](http://www.xkcd.com/292/)

*   To restrict the length of the figure caption in List of figures use a \[short-title\] and {longtitle} for the caption or the section:

		`\caption[Caption that you want to appear in TOC]{Actual caption of the figure}`
		`\section[short]{title}`

*   To exclude sections from being numbered and disable it from appearing in the Table of Contents use \section*{Section_Name} or \chapter*{Chapter_Name}

*   To only exclude it from being listed in the Table of Contents encapsulate the section command inside the `\tochide` command. `\tochide{\section{Section_Name}}` the section will not appear in the Table of Contents, but the section will be numbered.

*   When including figures in your tex file, it's a good practice to size your picture depending on the page size, instead of using absolute values. In the following example `0.75\textwidth` refers to picture width being set to 75% of the text width.

        \includegraphics[width=0.75\textwidth]{minion}

*   Use a `-` to separate sort key from the prefixes, eg., `g-pi` dentes the Greek symbol `pi`.

-------------------------------------------------------------------------------

## Frequently Asked Questions

### _Q1_: Where can I find the thesis formatting guidelines this class is based on?

[https://www.admin.cam.ac.uk/students/studentregistry/exams/submission/phd/format.html](https://www.admin.cam.ac.uk/students/studentregistry/exams/submission/phd/format.html)

[http://www.eng.cam.ac.uk/postgraduate/assets/library/document/p/original/planningphd.pdf](http://www.eng.cam.ac.uk/postgraduate/assets/library/document/p/original/planningphd.pdf)


### _Q2_: Where can I find newer versions of the University of Cambridge crest/logos?

The university updates its crest every now and then. You can find up-to-date
logos on [this page](http://www.admin.cam.ac.uk/offices/communications/services/logos/)
(subject to change without notice).

Download and exchange the new logos with `CUni.eps` and/or `CUni.pdf`. I'll try to keep the crest up to date.

### _Q3_: Where can I find the guidelines to submit my thesis and requirements?

[Preparing to submit:](https://www.admin.cam.ac.uk/students/studentregistry/exams/submission/phd/preparing.html)

[Formatting styles:](https://www.admin.cam.ac.uk/students/studentregistry/exams/submission/phd/format.html)

[Submitting the dissertation](https://www.admin.cam.ac.uk/students/studentregistry/exams/submission/phd/submitting.html)

### _Q4_: How can I count the number of words in my thesis?

You can run the following command (Linux/Unix):
    `ps2ascii thesis.pdf | wc -w` (eg., result 2713 words)

or 
    `pdftotext thesis.pdf | wc thesis.txt -w` (eg., result 2690 words)

### _Q5_: I found a bug in the template. Where do I report bugs?

You can report issues at
[our GitHub repository](https://github.com/kks32/phd-thesis-template).

You can also mail 
[the developer](https://github.com/kks32/phd-thesis-template/graphs/contributors) directly or contact [Tim Love, CUED](mailto:tpl@eng.cam.ac.uk)


--------------------------------------------------------------------------------
## Troubleshooting Warnings

### _W1_: I get the LaTeX Warning: You have requested document class Classes/PhDThesisPSnPDF, but the document class provides PhDThesisPSnPDF, should I be concerned? 

No! Do nothing, or if you don't want any warning messages change the line near the top of the class file to \ProvidesClass{Classes/PhDthesisPSnPDF} if you're not going to install the class file in a more standard location. You can install it in a standard location like `/usr/share/texmf/tex/latex/` and run `texhash` to reconfigure.

### _W2_:I get the package Fancyhdr Warning: \fancyhead's `E` option without twoside option is useless on input line \# or \#. What should I do? 

Nothing. The warning is because the twoside option is also defined in the class, although only the oneside option is currently used. 

### _W3_: I get the Class PhDThesisPSnPDF Warning: Unknown or non-standard option 'something'. Will see if I can load it from the book class. If you get a warning unused global option(s): `something` then the option is not supported! on input line \#.

You are either trying to use a undefined option or a non-standard option which is in the book class but not defined in the PhD Thesis Template. If it can be used it will be loaded and you will get no further warnings. If not, the option you chose is unavailable. 


### _W4_: I get LaTeX Warning: Unused global option(s):[something].

You are trying to load an option that is not supported in the PhDThesisClass and the Book Class. Are you sure you are using the right option? Check your spelling!

### _W5_: I get I'm skipping whatever remains of this command line \# of file thesis.aux \@input{Chapter1/chapter1.aux}

If you are generating a separate abstract for your thesis submission, ignore this warning and good luck with your submission. If you are compiling your thesis and see this warning, please remove the option `abstract` from the document class.



--------------------------------------------------------------------------------

## Known Issue(s) / Bugs

*   Hyperlinks doesn't seem to be working in Post-Script file, however works on DVI and PDF (which is produced from the PS file), possibly viewer limitation than a code bug.

*   On older versions of dvips (version 5.97 or below), if your page margins do not appear properly in your PDF, when compiling through DVI >> PS >> PDF, please ensure that you have set a4paper or a5paper in the document class. If you are still having issues you can run:

		ps2pdf -sPAPERSIZE=a4 thesis.ps thesis.pdf

    This issue occurs only when the papersize is not specified in the document class and you are compiling DVI >> PS >> PDF using an older version (5.97 or below) of dvips.

*   If you find any let me know, or even better, patch it and contribute to the development of the LaTeX Template.


--------------------------------------------------------------------------------

## TODO list

*  Make example thesis a document on how to use the template and include general guidelines and good  practices.

--------------------------------------------------------------------------------
## ChangeLog

### 2013/12/10 - Version 1.0
> Commit 478d56cf1a914109f4eef65e93674d7ecd252483
*   Fixed an issue with the headers in Nomenclature section
*   Removed deprecated codes, added functionality to tweak chapter headings in preamble.tex. 
*   Distributed under MIT license

### 2013/12/09 - Version 1.0 Beta Release 10.0
> Commit 973492fe1f1805e4fef60ec54060621b3e90a3cd
*   Fixed issues with DVI >> PS >> PDF and workaround, when papersize is not set for older versions of dvips (5.97 or lower).

### 2013/12/08 - Version 1.0 Beta Release 9.0
> Commit c11f98e26566af08cb9c4cacbdfddf6b28111886
*   Wider text area (75% of page size), support for separate abstract for submission to the Student Registry, appendix

### 2013/12/05 - Version 1.0 Beta Release 8.0
> Commit 324d1a5609992028afb109b424573cd3a5e31849
*   Update class file to support dvips driver when using dvi > PS output in hyperTeX. Removed deprecated codes from Declaration and class files

### 2013/12/05 - Version 1.0 Beta Release 7.2
> Commit 2f397eda12ef2b81314b67847e312f688095a379
*   Update to margin dimensions (1:1 ratio is maintained) with a binding offset of 5mm on the print version. Replaced the hmargin ratio of 3:2 with 1:1 with a binding offset.

### 2013/12/04 - Version 1.0 Beta Release 7.1
> Commit 9cb782f26cc3573f8d3077db520ba84b5f295049
*   Declaration with automatic insertion of the author and the degree date and conforming to the statments in the University guidelines

### 2013/12/03 - Version 1.0 Beta Release 7.0
> Commit 1f695d512ae5ce765398db4dc4b6381dc0351868
*   Default font size is 12pt and the default paper size is A4, confirming to the University regulations in terms of font, font sizer, paper size and set them as defaults.

### 2013/11/27 - Version 1.0 Beta Release 6.2
> Commit a5f49d49a6cc39209d95f91e667fd7b359ab5227
*   Update to the Makefile to remove PS files when running Makeclean

### 2013/11/26 - Version 1.0 Beta Release 6.1 
> Commit e29a99406649dcce8f23b6d9df0b87eabd09fc0e
*   Update to the Makefile to support PS to PDF conversion

### 2013/11/26 - Version 1.0 Beta Release 6.0
> Commit 187b9324420812326e62d963afa42e26532e82e7
*   Included a Windows Batch file for LaTeX / Nomenclature compilation
*   Supports \printnomencl[optional_argument]

### 2013/11/26 - Version 1.0 Beta Release 5.0
> Commit 76a733ee305ed4aae9d546492cef768512df2b13
*   Supports DVI/PS
*   Supports Custom Margin and FancyHdr update

### 2013/11/24 - Version 1.0 Beta Release 0
> Commit 73c8dd9ea82c21476d964ad5cdff1b71fe7327c8
*   Author(s): Krishna Kumar
*   Adaptive Title Page: Title page adapts to the length of the title
*   Print / On-line version: Different layout and hyper-referncing styles
*   Pre-defined and custom fonts (Times / Palatino / Latin Modern) with math support
*   Pre-defined and custom bibliography style support (authoryear / numbered / custom)
*   Custom page styles: 3 Different Header / Footer styles

### 2013/11/14 - Inception
> Author(s): Krishna Kumar

--------------------------------------------------------------------------------

## Inspirations/Based on:

*   Cambridge Computer Laboratory PhD Thesis Template [https://github.com/cambridge/thesis](https://github.com/cambridge/thesis)

*   CUED Version 1.1 Template by H. Banderi

## Acknowlegments

*   Alex Ridge - original idea, code concepts & testing

*   Steven Kaneti - code concepts

*   Tina Schwamb - testing and bug reports
