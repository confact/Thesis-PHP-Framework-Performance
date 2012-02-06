%% urithesis.cls
%% Version 1.13 (2011/08/23)
%% Copyright 2004, 2005, 2006, University of Rhode Island
%% Author: Timothy Toolan, Department of Electrical Engineering
%%
%% See http://www.ele.uri.edu/info/thesis/guide for the latest
%% info, including usage and examples.
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Timothy Toolan.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%
%        University of Rhode Island thesis class for LaTeX.
%
% This LaTeX class is used to create theses and dissertations which
% conform the Graduate School guidelines at the University of Rhode Island.
% It generates all of the preliminary pages including the title page,
% approval page, table of contents, list of figures, and list of tables.
% It generates the required bibliography, as well as lists of references.
% It also sets margins, spacing, and other format elements as required.
% The primary style manual used is Kate Turabian's "Manual for Writers of 
% Papers, Theses, and Dissertations," and the bibliography and references
% use the IEEE format.  This class can also create thesis proposals by 
% using the 'proposal' option.  It has several other options which are
% described below.  See the examples section for common uses.
%
% Author: Timothy Toolan, Department of Electrical Engineering
%                         at the University of Rhode Island.
%
%
% General Options:
%  The options in this section affect the overall appearance of the 
%  thesis, but all of them should comply with the Graduate School 
%  guidelines for theses and dissertations.
%
%   phd,masters: this specifies whether this is a PhD. dissertation
%     or a masters thesis.  The default is masters.
%
%   10pt,11pt,12pt: this determines the font size used throughout the 
%     document.  The default is 12pt.
%
%   oneref: this specifies that you want a single list of references
%     after the last chapter right before the first appendix, instead
%     of a list of references at the end of each chapter. 
%
%   manuscript: this specifies that your thesis is in manuscript format. 
%     The only difference between this and standard format, is that each 
%     chapter will be called manuscript. For instance, "Chapter 1" will 
%     now be "Manuscript 1".
%
%   3committee,4committee,5committee: this is the number of people
%     on your core committee, which determines how many signature lines
%     are needed on the signature page.  Each committee consists of a 
%     minimum of three core members, plus the Dean of the Graduate School.
%     The committee chairman does NOT sign the approval page.  (If you are
%     not sure how many core committee members you have, please consult 
%     with your major professor.)  The default is 3committee.
%
%   sequential,nonsequential: this specifies whether you want numbering
%     of figures, equations, and tables reset to 1 at the beginning of 
%     each chapter (nonsequential), or if you want the numbers to be 
%     sequential throughout the whole document.  The default is sequential.
%
%   topnum,bottomnum: this specifies whether you prefer your page
%     numbers on the top right or bottom center of the page.
%     The default is bottomnum.
%
%   aparefs: this will use the author last name and year for citations,
%     like the APA style (Toolan, 2006), instead of a number like [1].
%
%
% Writing Options:
%  The options in this section are intended to ease writing the thesis.
%  All of the options in this section will make the thesis not conform to 
%  the Graduate School guidelines, so none of these should be used
%  when generating the final copy.
%
%   draft: when draft is selected any overfull boxes are shown
%     by a black box indicating the area that is too large.  This 
%     is useful for finding anything that has gone outside the 
%     acceptable margins, like equations that are too long or figures
%     and tables that are too big.  Only the filename of included
%     figures are actually displayed.
%
%   draftbox: this is the same as the 'draft' option, except figures 
%     are actually displayed.
%
%   simpleref: when simpleref is specified, there will be a single list
%     of references at the end of the document after all other material,
%     and no bibliography.  This is convient when writing because bibtex
%     only needs to be run on a single file (thesis) to update the
%     references.
%
%   noprelim: when noprelim is specified, all of the preliminary pages, 
%     (the pages before the start of chapter 1), are not generated.
%     This can be used with the option nobib and the LATEX command 
%     \includeonly{}, to produce a document containing only the chapter 
%     you are currently working on.
%
%   nobib: when nobib is specified, there will be no bibliography
%     or list of references.
%
%
% Library Rights Page:
%  The Graduate School requires a "Library Rights Page," which is
%  to be included with the "original" copy of the thesis.  Selecting 
%  this option will generate that page, and only that page, ignoring 
%  the rest of the thesis.
%
%   libraryrightspage: this option will generate just the "Library
%     Rights Page", which should be included with the orignal copy
%     submitted to the graduate school.  All other options except
%     font size, copy/nocopy, and phd/masters are ignored when this 
%     option is given.
%
%   copy,nocopy: this determines whether you want to give the library
%     permission to make copies of the thesis.  The default is copy.
%     This option only applies to the "Library Rights Page".
%
%
% Thesis Proposal:
%  Because the thesis proposal is formatted similarly to the thesis
%  in terms of spacing, this option can be used to generate the 
%  proposal.  When selected, there is only one list of references 
%  at the end, and no bibliography.  All of the other options except 
%  font size and page number location are ignored because they make no 
%  sense in a proposal.
%
%   proposal: this specifies that this is a thesis proposal, and 
%     not an actual thesis. 
%
%
% Examples:
%
%   For a masters thesis with one list of references:
%     \documentclass[oneref]{urithesis}
%
%   For a Ph.D. dissertation:
%     \documentclass[phd]{urithesis}
%
%   For a manuscript format Ph.D. dissertation with a four member 
%   committee, and page numbers on the top:
%     \documentclass[phd,manuscript,4committee,topnum]{urithesis}
%
%
% Notes: 
%
%   Portions of this package were derived frome the chapterbib
%   package (Version 1.5 (09-OCT-1995) Donald Arseneau), therefore 
%   you should be sure not to use that package with this one due 
%   to inevitable conflicts.
%
%   You will also need the file uribiblio.bst for creating the
%   bibliography.
%
%   This package has been disigned to comply with the library's
%   format guidlines using either a 10pt or 12pt font, which is
%   specified in the \documentclass line.
%
%   By default the department named on the title page is Electrical
%   Engineering, but that can be changed by putting the command:
%     \dept{My Department}
%   in the main .tex file before any of the chapters are included.
%
%   The acknowledgements, preface, and dedication sections are not
%   required, but the abstract section is.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

\NeedsTeXFormat{LaTeX2e} \ProvidesClass{urithesis}[2011/08/23 v 1.13 %
University of Rhode Island thesis format]

% Declare our options.
\newif\if@wantchapterref \@wantchapterreftrue
\DeclareOption{chapterref}{\@wantchapterreftrue}
\DeclareOption{oneref}{\@wantchapterreffalse}

\newif\if@wantapalike \@wantapalikefalse
\DeclareOption{aparefs}{\@wantapaliketrue}

\newif\if@wantmanuscript \@wantmanuscriptfalse
\DeclareOption{manuscript}{\@wantmanuscripttrue}
\DeclareOption{standard}{\@wantwantmanuscriptfalse}

\newif\if@simpleref \@simplereffalse
\DeclareOption{simpleref}{\@simplereftrue \@wantchapterreffalse}

\newif\if@masters \@masterstrue
\DeclareOption{phd}{\@mastersfalse}
\DeclareOption{masters}{\@masterstrue}

\newif\if@fourcommittee \@fourcommitteefalse
\newif\if@fivecommittee \@fivecommitteefalse
\DeclareOption{3committee}{\@fourcommitteefalse \@fivecommitteefalse}
\DeclareOption{4committee}{\@fourcommitteetrue \@fivecommitteefalse}
\DeclareOption{5committee}{\@fourcommitteetrue \@fivecommitteetrue}

\newif\if@topnumbers \@topnumbersfalse
\DeclareOption{topnum}{\@topnumberstrue}
\DeclareOption{bottomnum}{\@topnumbersfalse}

\newif\if@libraryrights \@libraryrightstrue
\DeclareOption{nocopy}{\@libraryrightsfalse}
\DeclareOption{copy}{\@libraryrightstrue}

\newif\if@sequential \@sequentialtrue
\DeclareOption{nonsequential}{\@sequentialfalse}
\DeclareOption{sequential}{\@sequentialtrue}

\newif\if@noprelim \@noprelimfalse
\DeclareOption{noprelim}{\@noprelimtrue}
\DeclareOption{prelim}{\@noprelimfalse}

\newif\if@nobib \@nobibfalse
\DeclareOption{nobib}{\@nobibtrue}

\newif\if@proposal \@proposalfalse
\DeclareOption{proposal}{\@proposaltrue}

\newif\if@draftbox \@draftboxfalse
\DeclareOption{draftbox}{\@draftboxtrue}

\newif\if@libraryrightspage \@libraryrightspagefalse
\DeclareOption{nolibraryrightspage}{\@libraryrightspagefalse}
\DeclareOption{libraryrightspage}{\@libraryrightspagetrue}

% Declare options from report class that we want to pass.
\def\@optptsize{12pt}
\DeclareOption{10pt}{\def\@optptsize{10pt}}
\DeclareOption{11pt}{\def\@optptsize{11pt}}
\DeclareOption{12pt}{\def\@optptsize{12pt}}

\DeclareOption{draft}{\PassOptionsToClass{draft}{report}}
\DeclareOption{final}{\PassOptionsToClass{final}{report}}

\ProcessOptions 

\LoadClass[letterpaper,oneside,titlepage,onecolumn,openany,\@optptsize]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Set things that are determined permanently right after options
% are processed.

\if@draftbox
  \setlength\overfullrule{5pt}
\fi

\if@proposal
  \@noprelimtrue
  \@simplereftrue
  \@wantchapterreffalse
  \@sequentialtrue
\fi

\if@libraryrightspage
  \@noprelimtrue
  \@simplereftrue
  \@wantchapterreffalse
  \@sequentialtrue
  \@nobibtrue
  \def\@include#1 {}%
\fi

\def\@refbstfile{uriref}
\if@wantapalike
  % from apalike.sty
  \def\@cite#1#2{(#1\if@tempswa , #2\fi)}
  \def\citepunct{; }
  \def\@biblabel#1{}
  \def\@refbstfile{uriapa}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define functions for user to set things.

\def\dept#1{\gdef\@dept{#1}}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}
\def\reffile#1{\gdef\@reffile{#1}}
\def\abstract#1{\gdef\@abstract{#1}}
\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\def\preface#1{\gdef\@preface{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\def\titledisclaimer#1{\gdef\@titledisclaimer{#1}}

\def\signature#1{
  \@ifundefined{@signatureA}{%
    \gdef\@signatureA{#1}}{
  \@ifundefined{@signatureB}{%
    \gdef\@signatureB{#1}}{
  \@ifundefined{@signatureC}{%
    \gdef\@signatureC{#1}}{
  \@ifundefined{@signatureD}{%
    \gdef\@signatureD{#1}}{
  \gdef\@signatureE{#1}}}}}
}

\def\newchapter#1{%
  \if@gotfirstchapter\else
    \@gotfirstchaptertrue
    \initialstuff
  \fi
  \include{#1}
}

\def\newappendix#1{%
  \if@gotfirstappendix
    \immediate\write\@mainaux{\string\gdef\string\@multappendix{Y}}
  \else
    \@gotfirstappendixtrue
    \@sequentialfalse % figures and tables in appendix must not be sequential
    \startappendix
    \immediate\write\@auxout{\string\@writefile{toc}{{\vskip 1.0ex plus\p@ 
                     {\string\bfseries  \noindent APPENDIX \hfill}}}}
    \immediate\write\@auxout{\string\@writefile{toc}{ }} 
  \fi
  \include{#1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Set page dimensions.  These values give us 1.6in on the left margin,
% and 1.1in on the other margins, as well as placing the page numbers 
% correctly.

\newlength{\@realheadsep}
\newlength{\@realtextheight}

\makeatletter

\setlength{\oddsidemargin}{.6in}
\setlength{\textwidth}{5.8in}
\setlength{\marginparsep}{.2in}
\setlength{\marginparwidth}{1in}

\setlength{\topmargin}{-0.5in}
\setlength{\headheight}{0.25in}
\setlength{\@realheadsep}{0.35in}
\setlength{\@realtextheight}{8.8in}
\setlength{\footskip}{.5in}

\setlength{\paperheight}{11.0in}
\setlength{\paperwidth}{8.5in}

\setlength{\headsep}{\@realheadsep}
\setlength{\textheight}{\@realtextheight}

% set paragraph indentation to 2em
\parindent 2em

% Lengths used by capheadings where we expand the header and shrink 
% the text body to allow the heading on each page within original margins.
\newlength{\@headerextra}
\setlength{\@headerextra}{0.35in}

\newlength{\@altheadsep}
\setlength{\@altheadsep}{\@realheadsep}
\addtolength{\@altheadsep}{\@headerextra}

\newlength{\@alttextheight}
\setlength{\@alttextheight}{\@realtextheight}
\addtolength{\@alttextheight}{-\@headerextra}

\newlength{\@fullheadheight}
\setlength{\@fullheadheight}{\headheight}
\addtolength{\@fullheadheight}{\@realheadsep}

\newlength{\@headtofootheight}
\setlength{\@headtofootheight}{\@alttextheight}
\addtolength{\@headtofootheight}{\@realheadsep}
\addtolength{\@headtofootheight}{\@headerextra}

% Set double spacing command for 12pt font.
\def\doublespace{%
  \renewcommand{\baselinestretch}{1.66}
  \renewcommand{\arraystretch}{0.602}
  \normalsize%
}

% Set double spacing command for 11pt font.
\def\@tmppt{11pt}
\ifx\@optptsize\@tmppt
  \def\doublespace{%
    \renewcommand{\baselinestretch}{1.62}
    \renewcommand{\arraystretch}{0.617}
    \normalsize%
  }
\fi

% Set double spacing command for 10pt font.
\def\@tmppt{10pt}
\ifx\@optptsize\@tmppt
  \def\doublespace{%
    \renewcommand{\baselinestretch}{1.67}%
    \renewcommand{\arraystretch}{0.599}%
    \normalsize%
  }
\fi

% Set single spacing command.
\def\singlespace{%
  \renewcommand{\baselinestretch}{1.0}%
  \renewcommand{\arraystretch}{1.0}%
  \normalsize%
}

% Do double spacing by default.
\doublespace

% fixes hyperref warning
\providecommand*{\toclevel@chapterx}{0}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Basic definitions.

% Set \@worktype to either "Thesis" or "Dissertation".
\def\@worktype{%
  \if@masters%
    Thesis%
  \else%
    Dissertation%
  \fi%
}

% Set some default values for certain things.
\def\@title{}
\def\@author{}
\def\@dept{ELECTRICAL ENGINEERING}
\def\@copyrightyear{\number\the\year}
\def\@reffile{references}
\def\@titledisclaimer{}

% Sets name of bibliography file to thesisbib.bbl assuming the
% thesis.tex file was not renamed.
\def\@bibliofileext{bib}
\def\@bibliofile{\jobname\@bibliofileext}

% Set some names used as chapter headings.
\renewcommand\contentsname{TABLE OF CONTENTS}
\renewcommand\listtablename{LIST OF TABLES}
\renewcommand\listfigurename{LIST OF FIGURES}
\if@wantchapterref
  \newcommand\listrefname{List of References}
\else
  \newcommand\listrefname{LIST OF REFERENCES}
\fi
\newcommand\biblioname{BIBLIOGRAPHY}
\if@wantmanuscript 
  \renewcommand\chaptername{MANUSCRIPT}
\else
  \renewcommand\chaptername{CHAPTER}
\fi

% This is used to print the lead pages before the first chapter.
\newif\if@gotfirstchapter \@gotfirstchapterfalse

% This is used to convert over to appendices from chapters,
% and to print a list of references if using oneref format.
\newif\if@gotfirstappendix \@gotfirstappendixfalse

% Counts the number of references in each chapter to determine if there
% is a list of references for that chapter when using chapterref format.
\newcounter{chaptercitecount}

% These two are called from the main aux file if we need a list of figures 
% page and/or a list of tables.  They are put in the aux file from the
% enddocumenthook using totaltablecount and totalfigurecount.
\def\myusefigurespage{\gdef\@myusefigurespage{true}}
\def\myusetablespage{\gdef\@myusetablespage{true}}

% These are used to determine if there are any figures and/or tables
% in the thesis, because if there aren't any, we don't want a 
% list of figures and/or list of tables.
\newcounter{totaltablecount}
\newcounter{totalfigurecount}

% Local mirror of \@myusefigurespage and \@myusetablespage.
\newif\if@usefigurespage \@usefigurespagefalse
\newif\if@usetablespage \@usetablespagefalse

% used to make correct pdf index for hyperref
\def\addcustomcontentsline{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This function adds a file name to \@biblist, which will be printed to
% console with a message telling the user to run bibtex on these files.
\def\add@biblist#1{\@ifundefined{@biblist}{%
  \edef\@biblist{ bibtex #1}}{%
  \edef\@tmpbl{\@biblist^^J bibtex #1}\let\@biblist=\@tmpbl}
}

\if@wantchapterref

% These are taken right from chapterbib.sty, and needed in the 
% redefinition of \@include.
\def\@CB@writeContext{\if@filesw\begingroup
  \edef\@tempa{\string\gdef\string\@extra@binfo{\@extra@b@citeb}}%
  \immediate\write\@auxout{\@tempa\@CB@wtoc{toc}\@CB@wtoc{lof}\@CB@wtoc{lot}}%
  \endgroup\fi}
\def\@CB@wtoc#1{\string\@writefile{#1}{\gdef
  \string\the@ipfilectr{\@extra@b@citeb}}}%

% Need to include chapter references before the \clearpage and
% make some modifications from chapterbib package. This definition 
% was taken from latex.ltx with some code from chapterbib.sty.
\def\@include#1 {%
  \clearpage
  % The next three lines are from chapterbib.
  \global\advance\c@inputfile\@ne \xdef\the@ipfilectr{@-\the\c@inputfile}%
  \@CB@writeContext%
  \xdef\@currentipfile{#1}%
  \if@filesw
    \immediate\write\@mainaux{\string\@input{#1.aux}}%
  \fi
  \@tempswatrue
  \if@partsw
    \@tempswafalse
    \edef\reserved@b{#1}%
    \@for\reserved@a:=\@partlist\do
      {\ifx\reserved@a\reserved@b\@tempswatrue\fi}%
  \fi
  \if@tempswa
    \let\@auxout\@partaux
    \if@filesw
      \immediate\openout\@partaux #1.aux
      \immediate\write\@partaux{\relax}%
    \fi
    \@input@{#1.tex}%
    % the stuff before the \clearpage was addded
    \if@filesw\immediate\write\@auxout{\string\bibstyle{\@refbstfile}}\fi%
    \if@filesw\immediate\write\@auxout{\string\bibdata{\@reffile}}\fi%
    \ifnum\value{chaptercitecount}>0
      \if@nobib\else%
      \def\addcustomcontentsline{\addcontentsline{toc}{section}{\listrefname}}
      \@input{\@currentipfile.bbl}
      \add@biblist{\@currentipfile}
      \fi%
    \fi
    \clearpage
    \@writeckpt{#1}%
    \if@filesw
      \immediate\closeout\@partaux
    \fi
  \else
    \deadcycles\z@
    \@nameuse{cp@#1}%
  \fi
  \let\@auxout\@mainaux%
  % The next three lines are from chapterbib.
  \global\let\@currentipfile\@savedjobname%
  \gdef\the@ipfilectr{}%
  \@CB@writeContext%
}

% This comes from chapterbib.sty.
\@ifundefined{@extra@binfo}{%
  \def\bibcite#1#2{\global\@namedef{b@#1\@extra@binfo}{#2}}%
}{}

% This comes from chapterbib.sty.
\@ifundefined{@extra@b@citeb}{% if not defined by compatible package
 \def\@citex[#1]#2{%  Add \@extra@b@citeb to \cite
   \let\@citea\@empty
   \@cite{\@for\@citeb:=#2\do
     {\@citea\let\@citea\citepunct
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \stepcounter{chaptercitecount}% count references
      \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
      \if@filesw\immediate\write12{\string\citation{\@citeb}}\fi%
      \@ifundefined{b@\@citeb \@extra@b@citeb}{\mbox{\reset@font\bf ?}%
         \@warning{Citation `\@citeb' in file `\@currentipfile'
             on page \thepage \space undefined}\G@refundefinedtrue}%
      {\hbox{\citeform{\csname b@\@citeb \@extra@b@citeb\endcsname}}}}}{#1}}

  \@ifundefined{citeform}{\let\citeform\@empty}{}
  \@ifundefined{citepunct}{\def\citepunct{,\penalty\@m\ }}{}
}{}%

% These lines come from chapterbib.sty.
\xdef\@savedjobname{\jobname}% save root file name as a macro
\let\@currentipfile\@savedjobname
\gdef\the@ipfilectr{}
\def\@extra@b@citeb{\the@ipfilectr}
\newcount\c@inputfile \global\c@inputfile=0
\gdef\@extra@binfo{}  % in case .aux files are left from old run.

\else%\if@wantchapterref

% This comes from latex.ltx, and is modified to add bibliography
% entries as well as reference entries.
\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\if@wantapalike%
       \@citea\def\@citea{; }%
     \else%
       \@citea\def\@citea{,\penalty\@m\ }%
     \fi%
     \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \if@filesw\immediate\write12{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
       {\hbox{\csname b@\@citeb\endcsname}}}}{#1}}

\fi%\if@wantchapterref

% These two things must be done after all other packages are included,
% specifically cite and/or overcite.
\AtBeginDocument{
% Redefine nocite so it writes to the bibliography only, and
% doesn't complain about undefined references since bibtex
% will complain anyway.  It came from latex.ltx.
\def\nocite#1{\@bsphack
  \@for\@citeb:=#1\do{%
    \edef\@citeb{\expandafter\@firstofone\@citeb}%
    \if@filesw\immediate\write12{\string\citation{\@citeb}}\fi
  }\@esphack}

% Redefine these to do nothing because they should not be used 
% beacuse they are done on the users behalf by this class.
\def\bibliography#1{}
\def\bibliographystyle#1{}

% This is used by cite.sty for the actual citations.  It is modified
% to add entries to the bibliography, and count entries.
\@ifundefined{@extra@b@citeb}{}{
  \def\@nocite#1{\begingroup\let\protect\string% normalize active chars
    \xdef\@no@sparg{\expandafter\@ignsp#1 \: }\endgroup% and remove ALL spaces
    \if@filesw \immediate\write\@auxout {\string\citation {\@no@sparg}}\fi%
    \stepcounter{chaptercitecount}% count references in chapters
    \if@filesw \immediate\write12 {\string\citation {\@no@sparg}}\fi}
}
}

% For compatibility with the old urithesis.sty command.
\def\bibliocite#1{\nocite{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Style for references. This came from report.cls.
\renewenvironment{thebibliography}[1]
     {\if@proposal%
        \section*{\listrefname}%
      \else%
        \if@wantchapterref%
          \section*{\listrefname}%
        \else%
          \chapter*{\listrefname}%
        \fi%
      \fi%
      \singlespace\vspace{2ex}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
	    \if@wantapalike%
              \setlength{\leftmargin}{2.0em}
	      \addtolength{\leftmargin}{-\labelsep}
              \setlength{\itemindent}{-2.0em}
	    \fi
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m} {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

% Style for bibliography.  This came from report.cls.
\newenvironment{thesisbib}[1]
     {\chapter*{\biblioname}%
      \singlespace\vspace{2ex}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\setlength{\leftmargin}{2.0em}
	    \addtolength{\leftmargin}{-\labelsep}
            \setlength{\itemindent}{-2.0em}
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m} {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Chapter headings

% This is used to replace ps@plain when we have numbers on the top for the
% body of the thesis.  It will only be one sided so evenhead is empty.
\def\ps@plaintop{%
  \let\@mkboth\@gobbletwo%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty%
  \let\@evenhead\@empty%
  \def\@oddhead{\reset@font\hfil\thepage}%
}

% This is the heading used for list of figures and list of tables.
% The header actually generates both the header and the page number
% on the bottom of the page because \textheight may be incorrect on
% the last page of the list if there is a single entry that gets pushed
% to the next page.
\def\ps@capheadings{%
  \let\@mkboth\@gobbletwo%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty%
  \let\@evenhead\@empty%
  \def\@oddhead{%
     \settoheight{\@tmpheighta}{\rightmark}%
     \settoheight{\@tmpheightb}{\thepage}%
     \shortstack{%
        \rule{0in}{\@fullheadheight}\rule{\textwidth}{0in}\\%
        \rightmark\\%
        \rule{0in}{\@headtofootheight}%
          \vspace{-\@tmpheighta}\vspace{-\@tmpheightb}\\%
        \thepage}}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This creates the chapter and appendix header text.
\def\@makechapterhead#1{{%
   \renewcommand{\baselinestretch}{1.0}\bfseries%
   \begin{center}
   \rule{0in}{0.5in}%
   \MakeUppercase{\@chapapp}
   \@ifundefined{@usesingappend}{\space\thechapter}{}\vspace{2.0ex}\\%
   #1
   \vskip 2.0ex
   \end{center}
}}

% Make table of contents entries for numbered chapter headers.
\renewcommand*\l@chapter[2]{%
    \vskip 1.0ex \@plus\p@
  {\@dottedtocline{0}{1.5em}{1.5em}{\bfseries\noindent#1}{#2}}%
}

% Make table of contents entries for unnumbered chapter headers.
\newcommand*\l@chapterx[2]{%
    \vskip 1.0ex \@plus\p@
  {\@dottedtocline{0}{0em}{1.5em}{\bfseries\noindent#1}{#2}}%
}

% Redefined from report.cls to change left offset.
\renewcommand*\l@section{\@dottedtocline{1}{3.0em}{4.0em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{5.3em}{4.9em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{8.5em}{5.6em}}

% Undid 1.7 em indentation for first line in table of contents.
% From latex.ltx.
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}\hspace{-1.7em}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}


% It adds extra 1.7em of indentation, which is undone for the first 
% line in \@caption.
% This is from report.cls.
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{4.0em}}
\let\l@table\l@figure

% This has been modified so that the first line has -1.7em of negative
% space to allow multiple line captions to be indented on the runover
% lines.
% This is from latex.ltx.
\long\def\@caption#1[#2]#3{%
  \par
  \if@gotfirstappendix\else % dont want appendix figures and tables in list
    \addcontentsline{\csname ext@#1\endcsname}{#1}%
      {\protect\numberline{\csname the#1\endcsname}{\hspace{-1.7em}%
          \ignorespaces #2}}%
  \fi
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}


% This creates the headers for the unnumbered chapters (abstract,
% bibliography, etc.).
\def\@schapteroffset{0.0in}
\def\@makeschapterhead#1{{%
   \renewcommand{\baselinestretch}{1.0}\bfseries%
   \begin{center}
   \rule{0in}{\@schapteroffset}%
   #1
   \vskip 2.0ex
   \end{center}
  }}

\def\cl@chapter{%
  \setcounter{chaptercitecount}{0}%
  \if@sequential%
    \@elt{section}\@elt{footnote}%
  \else%
    \@elt{equation}\@elt{figure}\@elt{footnote}\@elt{section}\@elt{table}%
  \fi}

% These commands define the format of the headers for section,
% subsection, and subsubsection commands.
\renewcommand\section{%
  \@startsection {section}{1}{\z@}{4.0ex}{0.01ex}%
    {\renewcommand{\baselinestretch}{1.0}\normalfont\normalsize\bfseries}}
\renewcommand\subsection{%
  \@startsection {subsection}{2}{\z@}{4.0ex}{0.01ex}%
    {\renewcommand{\baselinestretch}{1.0}\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{%
  \@startsection {subsubsection}{3}{\z@}{4.0ex}{0.01ex}%
    {\renewcommand{\baselinestretch}{1.0}\normalfont\normalsize\bfseries}}

% These commands generate the figure/table/equation name, and records
% if we have any figures or tables and need a list page for them.
\renewcommand\thefigure{%
  \addtocounter{totalfigurecount}{1}%
  \if@sequential\else\thechapter.\fi\@arabic\c@figure}
\renewcommand\thetable{%
  \addtocounter{totaltablecount}{1}%
  \if@sequential\else\thechapter.\fi\@arabic\c@table}
\renewcommand\theequation{%
  \if@sequential\else\thechapter.\fi\@arabic\c@equation}

\if@proposal
  \renewcommand\thesection{\@arabic\c@section}
\fi

% Set single spacing in figures, tables, etc.  This is from latex.ltx.
\def \@floatboxreset {%
        \singlespace
        \reset@font
        \normalsize
        \@setminipage
}

% Set single spacing in footnotes.
\let\ele@footnotetext\@footnotetext
\def\@footnotetext#1{{\singlespace%
                      \ele@footnotetext{#1}}}

% Set single spacing in quote and quotation environment. 
% These are from report.cls.
\renewenvironment{quotation}
                 {\list{}{\singlespace%
                          \listparindent 1.5em%
                          \itemindent    \listparindent
                          \rightmargin   \leftmargin
                          \parsep        \z@ \@plus\p@}%
                  \item\relax}
                 {\endlist}
\renewenvironment{quote}
                 {\list{}{\singlespace%
                          \rightmargin\leftmargin}%
                  \item\relax}
                 {\endlist}

% Set single spacing in the verbatim environment.
% This is from latex.ltx.
\def\verbatim{\singlespace%
      \@verbatim \frenchspacing\@vobeyspaces \@xverbatim}

% Change caption to have period instead of colon.
% This is from report.cls.
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1. #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1. #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

% Make first paragraph indented.
% this is from report.cls.
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindenttrue
                    \secdef\@chapter\@schapter}

% This came from report.cls, and is used to exclude the appendix
% number in the table of contents if there is only one appendix.
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \refstepcounter{chapter}%
                       \typeout{\@chapapp\space\thechapter.}%
                       \if@gotfirstappendix 
                         \@ifundefined{@usesingappend}{
                             \addcontentsline{toc}{chapter}%
                                  {\protect\numberline{\thechapter}#1}%
                         }{%
           		   \addcontentsline{toc}{chapter}{#1}}%
		       \else
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                        \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create pages of the thesis.

% Create the library rights page.
\def\libraryrightspage{
\thispagestyle{empty}
\null\vfill
\begin{center}
{\bf Library Rights Statement}\\
\end{center}
In presenting the {\@worktype}, {\em \@title}, in partial fulfillment
of the requirements for an advanced degree at the University of Rhode
Island, I agree that the Library shall make it freely available for
inspection.  I further agree that permission for copying, as provided
for by the Copyright Law of the United States (Title 17, U.S.~Code),
of this {\@worktype} for scholarly purposes may be granted by the
Librarian.  It is understood that any copying or publication of this
{\@worktype} for financial gain shall not be allowed without my written
permission.

I hereby 
\if@libraryrights\else
  {\bf do not}
\fi
grant permission to the University of Rhode Island Library to use 
my {\@worktype} for scholarly purposes.

\begin{center}
\shortstack{\rule{0in}{0.6in}\\\rule{3in}{0.4pt}\\{\@author}}
\shortstack{\rule{0in}{0.4in}\\\rule{3in}{0.4pt}\\Date}
\end{center}
\vfill
\newpage
}

% Create the title page.
\def\titlepage{%
\thispagestyle{empty}%
\begin{center}{
  \MakeUppercase{\@title} \\
  BY \\
  \MakeUppercase{\@author}}
\end{center}
\vfill
\begin{center}
\@titledisclaimer
\end{center}
\vfill
\begin{center}{
  A \MakeUppercase{\@worktype}
  SUBMITTED IN PARTIAL FULFILLMENT OF THE\\
  REQUIREMENTS FOR THE DEGREE OF\\
\if@masters
  MASTER OF SCIENCE\\
\else
  DOCTOR OF PHILOSOPHY\\
\fi
  IN\\
  \MakeUppercase{\@dept}}
\end{center}
\vfill
\begin{center}
\@titledisclaimer
\end{center}
\vfill
\begin{center}
  UNIVERSITY OF RHODE ISLAND\\
  {\@copyrightyear}
\end{center}
\newpage
}

% Create the signature approval page.
\def\signaturepage{%
% define all electronic signatures that are still undefined
\@ifundefined{@signatureA}{\gdef\@signatureA{}}{}%
\@ifundefined{@signatureB}{\gdef\@signatureB{}}{}%
\@ifundefined{@signatureC}{\gdef\@signatureC{}}{}%
\@ifundefined{@signatureD}{\gdef\@signatureD{}}{}%
\@ifundefined{@signatureE}{\gdef\@signatureE{}}{}%
\thispagestyle{empty}%
\begin{center}
\if@masters
  MASTER OF SCIENCE THESIS\\
\else
  DOCTOR OF PHILOSOPHY DISSERTATION\\
\fi
  OF\\
  \MakeUppercase{\@author}
\end{center}
\vfill
  APPROVED:\\\vspace{-1.0em}\\
\null\hfill\begin{tabular}{rl}
  {\@worktype} Committee:\hspace{0.5in}\mbox{}\\\\
  Major Professor & \rule[-0.1in]{3in}{0.4pt}\hspace{-3in}\@signatureA\\
  & \shortstack[l]{\rule{0in}{0.4in}\@signatureB\\\rule[-0.1in]{3in}{0.4pt}}\\
  & \shortstack[l]{\rule{0in}{0.4in}\@signatureC\\\rule[-0.1in]{3in}{0.4pt}}\\
\if@fourcommittee
  & \shortstack[l]{\rule{0in}{0.4in}\@signatureD\\\rule[-0.1in]{3in}{0.4pt}}\\
\fi
\if@fivecommittee
  & \shortstack[l]{\rule{0in}{0.4in}\@signatureE\\\rule[-0.1in]{3in}{0.4pt}}\\
\fi
  & \shortstack[l]{\rule{0in}{0.4in}\\\rule[-0.1in]{3in}{0.4pt}\\
                DEAN OF THE GRADUATE SCHOOL}\\
\end{tabular}
\vfill
\begin{center}
  UNIVERSITY OF RHODE ISLAND\\
  {\@copyrightyear}
\end{center}
}

% Create abstract page(s), counted, not numbered.
\def\abstractpages{\@ifundefined{@abstract}{}{
  \newpage
  \sloppy
  \chapter*{ABSTRACT}
  \addcontentsline{toc}{chapterx}{ABSTRACT}
  \thispagestyle{empty}
  \pagestyle{empty}
  \input{\@abstract}
}}

% Create anknowledgement page, counted, numbered.
\def\acknowledgementpage{\@ifundefined{@acknowledgements}{}{
  \newpage
  \pagestyle{plain}
  \chapter*{ACKNOWLEDGMENTS}
  \addcontentsline{toc}{chapterx}{ACKNOWLEDGMENTS}
  \input{\@acknowledgements}
}}

% Create dedication page, not counted, not numbered.
\def\dedicationpage{\@ifundefined{@dedication}{}{
  \newpage
  \pagestyle{plain}
  \chapter*{DEDICATION}
  \addcontentsline{toc}{chapterx}{DEDICATION}
  \mbox{}
  \vfill
  \input{\@dedication}
  \vfill
}}

% Create preface page(s), counted, numbered.
\def\prefacepages{\@ifundefined{@preface}{}{
  \newpage
  \pagestyle{plain}
  \chapter*{PREFACE}
  \addcontentsline{toc}{chapterx}{PREFACE}
  \input{\@preface}
}}

% Create table of contents pages.
% Need double brackets to keep singlespace and parskip local.
\def\contentspages{%
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    \singlespace%
    \setlength{\parskip}{1em}
    \chapter*{\contentsname}%
    \addcontentsline{toc}{chapterx}{\contentsname}
    \pagestyle{capheadings}%
    \markboth{}{{\bf \hfill Page}}%
    \@starttoc{toc}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
    \thispagestyle{capheadings}%
  \fi%
}%

% Create list of tables page.
\def\tablespage{
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    \singlespace%
    \setlength{\parskip}{1em}%
    \chapter*{\listtablename}%
    \addcontentsline{toc}{chapterx}{\listtablename}%
    \pagestyle{capheadings}%
    \markboth{}{{\bf Table \hfill Page}}%
    {\bf \noindent Table \hfill Page}\\\vspace{-1em}%
    \@starttoc{lot}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
    \thispagestyle{capheadings}%
  \fi%
}

% Create list of figures page.
\def\figurespage{
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    \singlespace%
    \setlength{\parskip}{1em}%
    \chapter*{\listfigurename}%
    \addcontentsline{toc}{chapterx}{\listfigurename}%
    \pagestyle{capheadings}%
    \markboth{}{{\bf Figure \hfill Page}}%
    {\bf \noindent Figure \hfill Page}\\\vspace{-1em}%
    \@starttoc{lof}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
    \thispagestyle{capheadings}%
  \fi%
}

% Produce all of the pages up to the start of chapter 1.
\def\startingpages{%
  \pagenumbering{arabic}
  \setcounter{page}{0}
  \titlepage
  \pagenumbering{roman}
  \pagestyle{plain}
  \signaturepage
  \abstractpages
  \acknowledgementpage
  \dedicationpage
  \prefacepages
  %
  \setlength{\textheight}{\@alttextheight}%
  \newpage
  \pagestyle{plain}
  \setlength{\headsep}{\@altheadsep}%
  \contentspages
  \setlength{\textheight}{\@realtextheight}%
  \if@usetablespage
    \setlength{\textheight}{\@alttextheight}%
    \newpage
    \setlength{\headsep}{\@altheadsep}%
    \tablespage
    \setlength{\textheight}{\@realtextheight}%
  \fi
  \if@usefigurespage
    \setlength{\textheight}{\@alttextheight}%
    \newpage
    \setlength{\headsep}{\@altheadsep}%
    \figurespage
    \setlength{\textheight}{\@realtextheight}%
    \pagestyle{capheadings}%
  \fi
  \addtocontents{toc}{{\vskip 1.0ex \@plus\p@
    {\bfseries\noindent \chaptername \hfill}}}%
  \addtocontents{toc}{ }
  \newpage
  \setlength{\headsep}{\@realheadsep}%
}

% Create the proposal title.
\def\proposaltitle{%
\begin{center}
  \bfseries\@title\\
  by\\
  \@author
  \vspace{2ex}
\end{center}
}

% Stuff that is done at the startup.
\def\initialstuff{%
  % open the aux file for the bibliography
  \immediate\openout12=\@bibliofile.aux
  \immediate\write12{\string\bibstyle{uribib}}
  \immediate\write12{\string\bibdata{\@reffile}}
  %
  \@ifundefined{@myusefigurespage}{}{\@usefigurespagetrue}
  \@ifundefined{@myusetablespage}{}{\@usetablespagetrue}
  %
  \newcounter{@tmppage}
  \newlength{\@tmpheighta}
  \newlength{\@tmpheightb}
  \if@proposal\else
    \if@libraryrightspage
      \libraryrightspage
    \fi
    \if@noprelim\else
      \startingpages
    \fi
  \fi
  \pagenumbering{arabic}
  \if@topnumbers
    \def\ps@plain{\ps@plaintop}
  \fi
  \pagestyle{plain}
  \def\@schapteroffset{0.5in}
  \if@proposal
    \proposaltitle
  \fi  
}

\AtBeginDocument{
  \if@proposal
    \pagenumbering{arabic}
    \if@topnumbers
      \def\ps@plain{\ps@plaintop}
    \fi
    \pagestyle{plain}
    \proposaltitle
  \fi  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\startappendix{%
  \@ifundefined{@multappendix}{\def\@usesingappend{Y}}{}%
  \if@wantchapterref\else
    \def\addcustomcontentsline{\addcontentsline{toc}{chapterx}{\listrefname}}
    \if@filesw\immediate\write\@auxout{\string\bibstyle{\@refbstfile}}\fi
    \if@simpleref\else
      \if@filesw\immediate\write\@auxout{\string\bibdata{\@reffile}}\fi
      \@input{\jobname.bbl}
      \add@biblist{\jobname}
    \fi
    \newpage
  \fi

  \appendix
}

% This function will add the "List of Figures" and "List of Tables"
% if there are any figures or tables in the thesis.
\def\@addfigtbl{%
  \ifnum\value{totalfigurecount}>0
    \if@filesw\immediate\write\@auxout{\string\myusefigurespage}\fi
  \fi
  \ifnum\value{totaltablecount}>0
    \if@filesw\immediate\write\@auxout{\string\myusetablespage}\fi
  \fi
}

% This function is calles at \end{document} to create the bibliography.
\def\biblio{%
  \if@nobib\else%
    \if@simpleref
      \if@filesw\immediate\write\@auxout{\string\bibdata{\@reffile}}\fi
      \if@proposal
        \if@filesw\immediate\write\@auxout{\string\bibstyle{\@refbstfile}}\fi
      \else
        \if@noprelim
          \if@filesw\immediate\write\@auxout{\string\bibstyle{\@refbstfile}}\fi
        \else
          \@addfigtbl
        \fi
      \fi
      \@input{\jobname.bbl}
      \add@biblist{\jobname}
    \else
      \if@gotfirstappendix\else
        \startappendix
      \fi
      \@addfigtbl
      \@input{\@bibliofile.bbl}
      \add@biblist{\@bibliofile}
    \fi%
  \fi
}

% This will add a call to the biblio function when \end{document} is reached.
\let\@enddocumenthook\biblio

% This is from latex.ltx to allow us to print the message about bibtex
% after the final clearpage so it will not be buried in a lot of
% other messages.
\def\enddocument{%
   \let\AtEndDocument\@firstofone
   \@enddocumenthook
   \@checkend{document}%
   \clearpage
   \begingroup
     \if@filesw
       \immediate\closeout\@mainaux
       \let\@setckpt\@gobbletwo
       \let\@newl@bel\@testdef
       \@tempswafalse
       \makeatletter \input\jobname.aux
     \fi
     \@dofilelist
     \ifdim \font@submax >\fontsubfuzz\relax
       \@font@warning{Size substitutions with differences\MessageBreak
                  up to \font@submax\space have occurred.\@gobbletwo}%
     \fi
     \@defaultsubs
     \@refundefined
     \if@filesw
       \ifx \@multiplelabels \relax
         \if@tempswa
           \@latex@warning@no@line{Label(s) may have changed.
               Rerun to get cross-references right}%
         \fi
       \else
         \@multiplelabels
       \fi
     \fi
     \@ifundefined{@biblist}{}{
       \immediate\write16{ }
       \immediate\write16{BibTeX Info: The commands to generate the %
                          bibliography and references are: }
       \immediate\write16{\@biblist}
       \immediate\write16{ }
       \immediate\openout13=genbib.txt
       \immediate\write13{\@biblist}
       \immediate\closeout13
     }
   \endgroup
   \deadcycles\z@\@@end}

