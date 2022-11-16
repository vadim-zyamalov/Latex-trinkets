%% This is file `extreport.cls',
%% (new: size options 9pt, 14pt, 17pt, 20pt)
%% generated from `report.cls' by Wolfgang May, Inst.f.Informatik,
%%                Universitaet freiburg, Germany.
%%
%%                Some modifications (mainly for size and new font sizes)
%%                by James Kilfiger.
%%                mapdn@csv.warwick.ac.uk %
%%
%% The original source files were:
%% Copyright 1993 1994 1995 1996 1999
%% The LaTeX3 Project and any individual authors listed elsewhere
%% in this file.
%%
%% This file may be distributed under the terms of the Latex Project
%% public licence
%%
%% This system is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{nirreport}
              [1996/10/08 v1.0
 Non Standard LaTeX document class]
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\newif\if@numinchap
\@titlepagetrue
\@numinchapfalse
\newif\if@openright

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\DeclareOption{8pt}{\renewcommand\@ptsize{8}}
\DeclareOption{9pt}{\renewcommand\@ptsize{9}}
\DeclareOption{10pt}{\renewcommand\@ptsize{10}}
\DeclareOption{11pt}{\renewcommand\@ptsize{11}}
\DeclareOption{12pt}{\renewcommand\@ptsize{12}}
\DeclareOption{14pt}{\renewcommand\@ptsize{14}}
\DeclareOption{17pt}{\renewcommand\@ptsize{17}}
\DeclareOption{20pt}{\renewcommand\@ptsize{20}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\DeclareOption{numinchap}{\@numinchaptrue}
\DeclareOption{numindoc}{\@numinchapfalse}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}

\ExecuteOptions{a4paper,12pt,oneside,final,openany}
\ProcessOptions

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\def\EC@family#1#2#3#4#5{%
  \DeclareFontShape{#1}{#2}{#3}{#4}%
  {<5><6><7><8><9><10><10.95><12><14.4>%
   <17.28><20.74><24.88><29.86><35.83><42.99><51.59>genb*#5}{}}
\EC@family{T1}{cmr}{m}{n}{ecrm}
\EC@family{T1}{cmr}{m}{sl}{ecsl}
\EC@family{T1}{cmr}{m}{it}{ecti}
\EC@family{T1}{cmr}{m}{sc}{eccc}
\EC@family{T1}{cmr}{bx}{n}{ecbx}
\EC@family{T1}{cmr}{b}{n}{ecrb}
\EC@family{T1}{cmr}{bx}{it}{ecbi}
\EC@family{T1}{cmr}{bx}{sl}{ecbl}
\EC@family{T1}{cmr}{bx}{sc}{ecxc}
\EC@family{T1}{cmr}{m}{ui}{ecui}
\DeclareFontShape{OT1}{cmr}{m}{n}%
     {<5><6><7><8><9><10><12>gen*cmr%
      <10.95>cmr10%
      <14.4>cmr12%
      <17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmr17}{}
\DeclareFontShape{OT1}{cmr}{m}{sl}%
     {<5><6><7>cmsl8%
      <8><9>gen*cmsl%
      <10><10.95>cmsl10%
      <12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmsl12%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{it}%
     {<5><6><7>cmti7%
      <8>cmti8%
      <9>cmti9%
      <10><10.95>cmti10%
      <12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmti12%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{sc}%
     {<5><6><7><8><9><10><10.95><12>%
      <14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmcsc10%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{ui}
   {<5><6><7><8><9><10><10.95><12>%
      <14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmu10%
      }{}
\DeclareFontShape{OT1}{cmr}{b}{n}
     {<5><6><7><8><9><10><10.95><12>%
      <14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmb10%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{n}
   {<5><6><7><8><9>gen*cmbx%
      <10><10.95>cmbx10%
      <12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmbx12%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{sl}
      {<5><6><7><8><9>%
      <10><10.95><12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmbxsl10%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{it}
      {<5><6><7><8><9>%
      <10><10.95><12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmbxti10%
      }{}
\input{size\@ptsize.clo}

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\RequirePackage{exscale}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{1.5}
\setlength\parskip{\z@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

% Взято из кода setspace
\let\latex@xfloat=\@xfloat
\def\@xfloat #1[#2]{%
  \latex@xfloat #1[#2]%
  \def\baselinestretch{1}%
  \normalsize
}

\long\def\@footnotetext#1{%
  \insert\footins{%
% GT:  Next line added.  Hook desired here!
    \def\baselinestretch {1}%
    \reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth
    \@parboxrestore
    \protected@edef\@currentlabel{%
      \csname p@footnote\endcsname\@thefnmark
    }%
    \color@begingroup
      \@makefntext{%
        \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}%
    \color@endgroup}}

% Minipage footnotes.

\long\def\@mpfootnotetext#1{%
  \global\setbox\@mpfootins\vbox{%
    \unvbox \@mpfootins
%  GT:  Next line added.  Hook desired here!
    \def\baselinestretch {1}%
    \reset@font\footnotesize
    \hsize\columnwidth
    \@parboxrestore
    \protected@edef\@currentlabel{%
      \csname p@mpfootnote\endcsname\@thefnmark}%
    \color@begingroup
      \@makefntext{%
       \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}%
   \color@endgroup}}

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
        ##1}}{}}%
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection. \ %
        \fi
        ##1}}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
        ##1}}}}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\if@titlepage
  \newcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\else
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%

    \newpage
    \global\@topnum\z@   % Prevents figures from going at top of page.
    \@maketitle
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------


\newlength{\Nir@subsubsection}

\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{3}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]

\renewcommand\thechapter      {\@arabic\c@chapter}
\renewcommand\thesection      {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}

\newcommand\@chapapp{\chaptername}

\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindenttrue
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \@makechapterhead{#2}%
                    \@afterheading}
\def\@makechapterhead#1{%
  {\indent \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \bfseries \thechapter\space #1\par\nobreak
    \else
      \bfseries #1\par\nobreak
    \fi
  }}
\def\@schapter#1{\addcontentsline{toc}{chapter}{#1}%
                 \@makeschapterhead{#1}%
                 \@afterheading}
\def\@makeschapterhead#1{%
  {\parindent \z@ \centering
    \normalfont\bfseries\MakeUppercase{#1}\par\nobreak
  }}

\newcommand\section{\@startsection {section}{1}{\parindent}%
                                   {\z@}%
                                   {\lineskip}%
                                   {\normalfont\normalsize\bfseries}}

\newcommand\subsection[1]{
  \refstepcounter{subsection}%
  \newlength{\Nir@subsection}
  \settowidth{\Nir@subsection}{#1.}%
  {\parbox[b]{\Nir@subsection}{\strut\raggedright\thesubsection\\#1.\strut}~}
  \@ifnextchar\par{\@gobble}{}}

\newcommand\subsubsection[1]{
  \refstepcounter{subsubsection}%
  \settowidth{\Nir@subsubsection}{#1.}%
  {\parbox[b]{\Nir@subsubsection}{\strut\raggedright\thesubsubsection\\#1.}~}
  \@ifnextchar\par{\@gobble}{}}

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\renewcommand{\@listI}   {\Nir@List}
\renewcommand{\@listii}  {\Nir@List}
\renewcommand{\@listiii} {\Nir@List}
\renewcommand{\@listiv}  {\Nir@List}

\newcommand\Nir@List{
  \setlength{\itemsep}{.5\parskip}
  \setlength{\topsep}{\z@}
  \setlength{\partopsep}{\z@}
  \setlength\parsep{\parskip}
  \setlength\listparindent{\parindent}
  \setlength\itemindent{\parindent}

  \setlength \leftmargini{\z@}
  \leftmargin \leftmargini
  \setlength \leftmarginii {\z@}
  \setlength \leftmarginiii{\z@}
  \setlength \leftmarginiv {\z@}
  \setlength \leftmarginv  {\z@}
  \setlength \leftmarginvi {\z@}
  \setlength \labelsep     {2mm}
  \setlength \labelwidth{\leftmargini}
  \addtolength\labelwidth{2\labelsep}
  \@beginparpenalty -\@lowpenalty
  \@endparpenalty   -\@lowpenalty
  \@itempenalty     -\@lowpenalty
}

\renewcommand\theenumi   {\@alph\c@enumi}
\renewcommand\theenumii  {\@arabic\c@enumi}
\renewcommand\theenumiii {\@arabic\c@enumii}
\renewcommand\theenumiv  {\@Alph\c@enumiv}

\newcommand\labelenumi   {\theenumi)}
\newcommand\labelenumii  {\theenumii)}
\newcommand\labelenumiii {\cdash---}

\renewcommand\p@enumii  {\theenumi}
\renewcommand\p@enumiii {\theenumi(\theenumii)}
\renewcommand\p@enumiv  {\p@enumiii\theenumiii}

\newcommand\labelitemi   {\cdash---}
\newcommand\labelitemii  {\cdash---}
\newcommand\labelitemiii {\cdash---}
\newcommand\labelitemiv  {\cdash---}

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
      \small
      \begin{center}%
        {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
      \end{center}%
      \quotation}
      {\endquotation}
\fi

\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}

\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}

\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

\newenvironment{titlepage}
    {%
      \newpage
      \thispagestyle{empty}%
      \setcounter{page}\@ne
    }%
    {\newpage
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}}

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}

\if@numinchap
  \@addtoreset{equation}{chapter}
  \renewcommand\theequation{%
    \ifnum \c@chapter>\z@ \thechapter.\fi\@arabic\c@equation}
\else
  \renewcommand\theequation{%
    \@arabic\c@equation}
\fi

\if@numinchap
  \newcounter{figure}[chapter]
  \renewcommand\thefigure{%
    \ifnum \c@chapter>\z@\thechapter.\fi \@arabic\c@figure}
\else
  \newcounter{figure}
  \renewcommand\thefigure{%
    \@arabic\c@figure}
\fi

\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}

\if@numinchap
  \newcounter{table}[chapter]
  \renewcommand\thetable{%
    \ifnum \c@chapter>\z@\thechapter.\fi \@arabic\c@table}
\else
  \newcounter{table}
  \renewcommand\thetable{%
    \@arabic\c@table}
\fi

%%% Bug fix 2000-9-21  missing backslash before c@chapter. JK.
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{0\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \def\Nir@testfloat{figure}
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1. #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1. #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\ifx\@captype\Nir@testfloat\hfil\fi\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{1}

\newcommand\tableofcontents{%
  % https://tex.stackexchange.com/a/333671
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
  \chapter*{\contentsname
    \@mkboth{%
      \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
  \@starttoc{toc}
}

% https://groups.google.com/g/comp.text.tex/c/AccPKV34LVo/m/7wHr-MnjWpkJ
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
        \large \bfseries #1\nobreak\leaders\hbox{\normalfont$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill \nobreak \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    %\vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\leaders\hbox{\normalfont$\m@th
      \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
      mu$}\hfill \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\newcommand\listoffigures{%
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \@starttoc{lof}}
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \chapter*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}}
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\chapter*{\bibname
        \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\if@numinchap
  \@addtoreset{footnote}{chapter}
\fi
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\today{}
\edef\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\onecolumn
\endinput
%%
%% End of file `extreport.cls'.
