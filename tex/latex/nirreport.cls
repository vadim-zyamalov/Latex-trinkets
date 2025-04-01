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
\ProvidesClass{nirreport}[1996/10/08 v1.0 Non Standard LaTeX document class]

\RequirePackage{etoolbox}
\RequirePackage{kvoptions}
\RequirePackage{makecell}

\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@numinchap
\newif\if@Nir@hasappendices
\@Nir@hasappendicesfalse
\@numinchapfalse
\newif\if@openright

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\DeclareStringOption[12.5mm]{parindent}[12.5mm]
\DeclareStringOption[1.5]{linestretch}[1.5]
\ProcessKeyvalOptions*

\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
% \DeclareOption{a5paper}
%    {\setlength\paperheight {210mm}%
%     \setlength\paperwidth  {148mm}}
% \DeclareOption{b5paper}
%    {\setlength\paperheight {250mm}%
%     \setlength\paperwidth  {176mm}}
% \DeclareOption{letterpaper}
%    {\setlength\paperheight {11in}%
%     \setlength\paperwidth  {8.5in}}
% \DeclareOption{legalpaper}
%    {\setlength\paperheight {14in}%
%     \setlength\paperwidth  {8.5in}}
% \DeclareOption{executivepaper}
%    {\setlength\paperheight {10.5in}%
%     \setlength\paperwidth  {7.25in}}
% \DeclareOption{landscape}
%    {\setlength\@tempdima   {\paperheight}%
%     \setlength\paperheight {\paperwidth}%
%     \setlength\paperwidth  {\@tempdima}}
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

\setlength\hoffset{-1in}
\setlength\voffset{-1in}

\setlength\oddsidemargin{30mm}
\setlength\evensidemargin{15mm}

\setlength\marginparwidth{0mm}
\setlength\marginparsep{0mm}

\setlength\topmargin{20mm}
\setlength\headheight{0mm}
\setlength\headsep{0mm}

\setlength\textheight{257mm}
\setlength\textwidth{165mm}

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{\nirreport@linestretch}
\setlength\parskip{\z@}
\setlength\parindent{\nirreport@parindent}
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
  \setlength\itemsep       {.5\parskip}
  \setlength\topsep        {\z@}
  \setlength\partopsep     {\z@}
  \setlength\parsep        {\parskip}
  \setlength\listparindent {\parindent}
  \setlength\itemindent    {\parindent}

  \setlength \leftmargini   {\z@}
  \leftmargin \leftmargini
  \setlength \leftmarginii  {\z@}
  \setlength \leftmarginiii {\z@}
  \setlength \leftmarginiv  {\z@}
  \setlength \leftmarginv   {\z@}
  \setlength \leftmarginvi  {\z@}
  \setlength \labelsep      {2mm}
  \setlength \labelwidth    {\leftmargini}
  \addtolength\labelwidth   {2\labelsep}
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

\newcommand*\Nir@Keywords{}
\newcommand\NirKeywords[1]{%
  \renewcommand\Nir@Keywords{#1}}

\newenvironment{abstract}{%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
  \chapter*{\abstractname}%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{1}}%

  Отчет \totpag~с., \totfig~рис., \tottab~табл., \totbib~ист., \totapp~прил.

  \noindent\MakeUppercase{\Nir@Keywords}\par
}
{}

\newenvironment{executors}{%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
  \chapter*{\executorsname}%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{1}}%
  \noindent\begin{tabular}{p{80mm}cp{45mm}}
}{%
  \end{tabular}
}
\newcommand\executor[3]{#1 & \ultext[7em]{\Nir@text@Signature} & \makecell[tl]{#2\\(#3)} \\}

\newenvironment{nirdefslist}{%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
  \chapter*{\nirdefsname}%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{1}}%
  \Nir@text@nirdefslist\par
  \begin{description}
}{%
  \end{description}
}

\newenvironment{nirabbrlist}{%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
  \chapter*{\nirabbrname}%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{1}}%
  \Nir@text@nirabbrlist\par
  \begin{description}
}{%
  \end{description}
}

\newenvironment{description}[1][30mm]
{\list{}{\setlength\labelwidth{#1}%
    \itemindent\dimexpr(\parindent+\labelwidth)\relax
    \let\makelabel\descriptionlabel}}
{\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \raggedright\normalfont #1 \hfil ---}

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
  \@Nir@hasappendicestrue
  \setcounter{secnumdepth}{4}
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \@addtoreset{equation}{chapter}%
  \renewcommand{\theequation}{\thechapter.\arabic{equation}}%
  \@addtoreset{figure}{chapter}%
  \renewcommand{\thefigure}{\thechapter.\arabic{figure}}%
  \@addtoreset{table}{chapter}%
  \renewcommand{\thetable}{\thechapter.\arabic{table}}%
  \renewcommand\@chapapp{\appendixname}%
  \gdef\thechapter{\Alph{chapter}}%
  \renewcommand\@makechapterhead[1]{%
    {\parindent \z@ \centering \normalfont
      \ifnum \c@secnumdepth >\m@ne
        \normalfont\bfseries\centering \@chapapp\space\thechapter%
      \fi
      \par
      \interlinepenalty\@M
      \normalfont\bfseries\centering{##1}\par\nobreak
    }}

  \gdef\@chapter[##1]##2{\ifnum \c@secnumdepth >\m@ne
      \refstepcounter{chapter}%
      \typeout{\@chapapp\space\thechapter.}%
      \addcontentsline{toc}{chapter}%
      {\@chapapp\space\protect\numberline{\thechapter}##1}%
    \else
      \addcontentsline{toc}{chapter}{##1}%
    \fi
    \chaptermark{##1}%
    \addtocontents{lof}{\protect\addvspace{10\p@}}%
    \addtocontents{lot}{\protect\addvspace{10\p@}}%
    \@makechapterhead{##2}%
    \@afterheading
  }
}

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

\expandafter\def\expandafter\normalsize\expandafter{%
  \normalsize
  \setlength\abovedisplayskip{\z@}
  \setlength\belowdisplayskip{\z@}
  \setlength\abovedisplayshortskip{\z@}
  \setlength\belowdisplayshortskip{\z@}
}

\setlength\textfloatsep{\z@}
\setlength\floatsep{\z@}
\setlength\intextsep{\baselineskip}

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
               {\stepcounter{totfigure}\@float{figure}}
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
               {\stepcounter{tottable}\@float{table}}
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

\newcounter{biblio}
\setcounter{biblio}{0}
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
{\chapter*{\bibname
    \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
  \list{\@biblabel{\@arabic\c@biblio}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \@openbib@code
    \usecounter{biblio}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@biblio}}%
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
\newcommand\executorsname{Executors List}
\newcommand\nirdefsname{Definitions List}
\newcommand\nirabbrname{Abbreviations List}

\def\Nir@text@Organization{Organization}
\def\Nir@text@Approve{Approved by}
\def\Nir@text@Name{First name, last name}
\def\Nir@text@Approver{Chief executor}
\def\Nir@text@Supervisor{Supervisor}
\def\Nir@text@Executor{Executor}
\def\Nir@text@Title{Title}
\def\Nir@text@Subject{Topic}
\def\Nir@text@Modifier{on the topic}
\def\Nir@text@Type{Scientific report}
\def\Nir@text@About{on the research}
\def\Nir@text@Signature{Signature}
\def\Nir@text@intermediatename{intermediate}
\def\Nir@text@finalname{final}
\def\Nir@text@No{Reg.~\textnumero}
\def\Nir@text@Udk{UDC}
\def\Nir@text@nirdefslist{In this scientific report used are the following definitions:}
\def\Nir@text@nirabbrlist{In this scientific report used are the following abbreviations:}

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

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\def\maketitle{\titlepage}

\newcommand*\ulfill{%
  \mbox{}\leaders\hrule depth 2pt height -1.5pt\hfill%
}

% https://tex.stackexchange.com/a/55706
\newcommand*\ulfillx[1][\linewidth]{%
  \protect\makebox[#1]{\ulfill}
}

% https://tex.stackexchange.com/a/55706
\newcommand*\ultext[2][\linewidth]{%
  \raisebox{%
    -\normalbaselineskip%
  }{%
    \shortstack{%
    \underline{\hspace{#1}}\\
    {\footnotesize \centering (#2)}}
  }
}

\newcommand\Nir@Udk{
  \Nir@text@Udk~\protect\makebox[3em]{\ulfill}
}
\newcommand*\NirUdk[1]{%
  \renewcommand\Nir@Udk{#1}%
}

\newcommand\Nir@RegNo{%
  \Nir@text@No~\protect\makebox[3em]{\ulfill}%
}
\newcommand*\NirRegNo[1]{%
    \renewcommand\Nir@RegNo{#1}%
}

\newcommand\Nir@InnerNo{
  \Nir@text@No~\protect\makebox[3em]{\ulfill}%
}
\newcommand*\NirInnerNo[1]{%
  \renewcommand\Nir@InnerNo{#1}%
}

% Гриф секретности
\newcommand\Nir@Classified{%
  \vspace{-2ex}%
}
\newcommand*\NirClassified[1]{%
  \renewcommand\Nir@Classified{#1}%
}

% Approve text
\newcommand*\Nir@Approve{%
  \Nir@text@Approve%
}
\newcommand*\NirApprove[1]{%
  \renewcommand\Nir@Approve{#1}%
}

% Organization name
\newcommand\Nir@OrgLongName{
  \ultext[\linewidth]{\Nir@text@Organization}%
}
\newcommand\NirOrgLongName[1]{%
  \renewcommand\Nir@OrgLongName{\MakeUppercase{#1}}%
}

% Report Name
\newcommand*\Nir@Type{%
  \MakeUppercase\Nir@text@Type
}
\newcommand\NirType[1]{%
  \renewcommand\Nir@Type{#1}%
}

% Report about text
\newcommand*\Nir@About{
  \MakeUppercase\Nir@text@About
 %о{} научно-исследовательской{} работе%
}
\newcommand\NirAbout[1]{%
  \renewcommand\Nir@About{\MakeUppercase{#1}}%
}

% Annotated report
\newcommand\Nir@Annotate{}
\newcommand*\NirIsAnnotation[1]{%
  \renewcommand\Nir@Annotate{\MakeUppercase{#1}}%
}

% Report part
\newcommand*\Nir@PartNo{%
  \vspace{-2ex}%
}
\newcommand\NirPartNo[2]{%
  \renewcommand\Nir@PartNo{#1 #2}%
}

% Report Year
\newcommand\Nir@Year{\the\year}
\newcommand*\NirYear[1]{%
  \renewcommand\Nir@Year{#1}%
}

\newcommand\Nir@Town{}
\newcommand*\NirTown[1]{%
  \renewcommand\Nir@Town{#1}%
}

\newcommand\Nir@ApproverStamp{
  \parbox[t]{.4\linewidth}{
    {\centering\MakeUppercase{\Nir@Approve}

    }
    {\raggedright\Nir@ApproverPost

    }
    \bigskip
    {\ulfill~\Nir@ApproverName

    }
    \bigskip
    <<\protect\makebox[3em]{\ulfill}>>~\ulfill~\Nir@Year~г.
  }
}
\newcommand*\NirApproverStamp[1]{%
  \renewcommand\Nir@ApproverStamp{#1}%
}

\newcommand\Nir@ApproverPost{
  \ultext{\Nir@text@Approver}
}
\newcommand\NirApproverPost[1]{%
  \renewcommand\Nir@ApproverPost{#1}%
}

\newcommand\Nir@ApproverName{%
  \ultext[5em]{\Nir@text@Name}%
}
\newcommand*\NirApproverName[1]{%
  \renewcommand\Nir@ApproverName{#1}%
}

\newcommand*\NirApprover[2]{
  \renewcommand\Nir@ApproverPost{#1}
  \renewcommand\Nir@ApproverName{#2}
}

% Head Supervisor stamp
\newcommand\Nir@SupervisorStamp{
  \parbox[b]{0.4\linewidth}{\raggedright
    \Nir@text@Supervisor\\
    %Руководитель темы\par
    \Nir@SupervisorPost}
  \hfill
  \ultext[5em]{\Nir@text@Signature}
  \hfill
  \Nir@SupervisorName
}
\newcommand*\NirSupervisorStamp[1]{%
  \renewcommand\Nir@SupervisorStamp{#1}}

\newcommand\Nir@SupervisorPost{
    \ultext{\Nir@text@Supervisor}
}
\newcommand*\NirSupervisorPost[1]{%
  \renewcommand\Nir@SupervisorPost{#1}%
}

\newcommand\Nir@SupervisorName{%
  \ultext[5em]{\Nir@text@Signature}%
}
\newcommand*\NirSupervisorName{%
  \renewcommand\Nir@SupervisorName{}
}

\newcommand*\NirSupervisor[2]{
  \renewcommand\Nir@SupervisorPost{#1}
  \renewcommand\Nir@SupervisorName{#2}
}

% Head executor of research
\newcommand\Nir@ExecutorStamp[1]{%
  \parbox[b]{0.4\linewidth}{\raggedright
    \Nir@text@Executor\\
    %Исполнитель темы\par
    \Nir@ExecutorPost}
  \hfill
  \ultext[5em]{\Nir@text@Signature}
  \hfill
  \Nir@ExecutorName}
\newcommand*\NirExecutorStamp[1]{%
  \renewcommand\Nir@ExecutorStamp{#1}}

\newcommand\Nir@ExecutorPost{%
  % \ultext{ответственный исполнитель}
  \ultext{\Nir@text@Executor}
}

\newcommand\Nir@ExecutorName{%
  \ultext[5em]{\Nir@text@Name}}
\newcommand*\NirExecutorName{%
  \renewcommand\Nir@ExecutorName{}
}

\newcommand*\NirExecutor[2]{
  \renewcommand\Nir@ExecutorPost{#1}
  \renewcommand\Nir@ExecutorName{#2}
}

\newcommand\Nir@Title{%
  % \ultext{наименование}
  \ultext{\Nir@text@Title}}
\newcommand\NirTitle[1]{%
  \renewcommand\Nir@Title{\MakeUppercase{#1}}}

\newcommand\Nir@Subject{%
  % \ultext{тема НИР}
  \ultext{\Nir@text@Subject}
}
\newcommand\NirSubject[1]{%
  \renewcommand\Nir@Subject{\MakeUppercase{#1}}}

\newcommand\Nir@SubjectModifier{%
  \Nir@text@Modifier :
}
\newcommand\NirSubjectModifier[1]{%
  \renewcommand\Nir@SubjectModifier{#1}}

\newcommand\Nir@TitleAndSubject{
  \Nir@Title\par
  \Nir@SubjectModifier\par
  \Nir@Subject
}

\newcommand\@intermediatename{\Nir@text@intermediatename}
\newcommand\intermediatename[1]{\renewcommand\@intermediatename{#1}}

\newcommand\@finalname{\Nir@text@finalname}
\newcommand\finalname[1]{\renewcommand\@finalname{#1}}

\newcommand\Nir@StageType{\@intermediatename}

\newcommand*\NirFinal[1][\@finalname]{%
  \renewcommand\Nir@StageType{#1}%
}

\newcommand*\NirFinalStage[2][\@finalname]{%
  \renewcommand\Nir@StageType{#1, #2}%
}

\newlength{\savedparskip}
\renewenvironment*{titlepage}{
  \setlength{\savedparskip}{\parskip}
  \setlength{\parskip}{0pt}
  \thispagestyle{empty}
  \linespread{1.1}\normalsize

  \begin{centering}
    {{\Nir@OrgLongName}} % name of Institute

    \vfill

    \parbox[t]{.45\linewidth}{
      \Nir@Udk\\ % UDK name and number
      \Nir@RegNo\\       %Reg name and number
      \Nir@InnerNo\\ %Inventory name and number
    }
    \hfill\Nir@ApproverStamp

    \vfill

    \Nir@Annotate \Nir@Type\\ % Annotated and Report name
    \Nir@About\\         % Report about
    \Nir@TitleAndSubject\\          % Report Subject
    (\Nir@StageType)

    \vfill

    \Nir@SupervisorStamp

    \vfill

    \vfill

    \Nir@Town,~\Nir@Year.

  \end{centering}
  \renewcommand\baselinestretch{\nirreport@linestretch}\normalsize
  \setlength{\parskip}{\savedparskip}
}

%% -----------------------------------------------------------------------------
%% Опции класса
%% -----------------------------------------------------------------------------

\newcounter{totpage}
\newcounter{totfigure}
\newcounter{tottable}
\newcounter{totappendix}
\newcounter{totbiblio}

\setcounter{totpage}{0}
\setcounter{totfigure}{0}
\setcounter{tottable}{0}
\setcounter{totappendix}{0}
\setcounter{totbiblio}{0}

\providecommand\totpag{\number\value{totpage}}
\providecommand\totfig{\number\value{totfigure}}%
\providecommand\tottab{\number\value{tottable}}%
\providecommand\totapp{\number\value{totappendix}}%
\providecommand\totbib{\number\value{totbiblio}}%

\AtEndDocument{%
  \addtocounter{totpage}{\c@page}%
  \if@Nir@hasappendices%
  \addtocounter{totappendix}{\value{chapter}}%
  \fi%
  \addtocounter{totbiblio}{\value{biblio}}%
  \immediate\write\@mainaux{%
    \string\gdef\string\totpag{\number\value{totpage}}%
    \string\gdef\string\totfig{\number\value{totfigure}}%
    \string\gdef\string\tottab{\number\value{tottable}}%
    \string\gdef\string\totapp{\number\value{totappendix}}%
    \string\gdef\string\totbib{\number\value{totbiblio}}%
  }%
}

\AtEndPreamble{
  \IfPackageLoadedTF{biblatex}{
    \renewrobustcmd*{\mkbibemph}{}
    \protected\long\def\blx@imc@mkbibemph#1{#1}

    \defbibenvironment{bibliography}
    {\list
      {\printtext[labelnumberwidth]{%
          \printfield{labelprefix}%
          \printfield{labelnumber}}}
      {\setlength{\labelwidth}{\labelnumberwidth}%
       \setlength{\leftmargin}{\z@}%
       \setlength{\itemsep}{\bibitemsep}%
       \setlength{\parsep}{\bibparsep}}%
      \renewcommand*{\makelabel}[1]{\hss##1}}
    {\endlist}
    {\item}

    \DefineBibliographyStrings{russian}{
      bibliography = {Список~использованных~источников},
      references = {Список~использованных~источников}
    }

    \AtEveryBibitem{\stepcounter{biblio}}
  }{}
}

\newcommand\Nir@lang@russian{%
  \renewcommand{\theenumi}{\asbuk{enumi}}%
  \addto\captionsrussian{%
    \def\contentsname{Содержание}%
    \def\bibname{Список~использованных~источников}%
    \def\abstractname{Реферат}
    \def\executorsname{Список исполнителей}
    \def\nirdefsname{Термины и определения}
    \def\nirabbrname{Перечень сокращений и обозначений}
  }

  \def\Nir@text@Organization{организация (предприятие)}
  \def\Nir@text@Approve{Утверждаю}
  \def\Nir@text@Name{Ф.И.О.}
  \def\Nir@text@Approver{Главный испонитель}
  \def\Nir@text@Supervisor{Руководитель темы}
  \def\Nir@text@Executor{Ответственный исполнитель}
  \def\Nir@text@Title{Название отчёта}
  \def\Nir@text@Subject{Название темы}
  \def\Nir@text@Modifier{на тему}
  \def\Nir@text@Type{Отчёт}
  \def\Nir@text@About{о{} научно-исследовательской{} работе}
  \def\Nir@text@Signature{Подпись}
  \def\Nir@text@intermediatename{промежуточный}
  \def\Nir@text@finalname{итоговый}
  \def\Nir@text@No{Рег.~\textnumero}
  \def\Nir@text@Udk{УДК}
  \def\Nir@text@nirdefslist{В настоящем отчете о НИР применяют следующие термины с соответствующими определениями:}
  \def\Nir@text@nirabbrlist{В настоящем отчете о НИР применяют следующие сокращения и обозначения:}
}

\AtBeginDocument{%
  \IfPackageLoadedWithOptionsTF{babel}{russian}{%
    \Nir@lang@russian
  }{}%
  \IfPackageLoadedTF{polyglossia}{%
    \ifthenelse{\equal{\xpg@main@language}{russian}}{\Nir@lang@russian}{}
  }{}%
}

\onecolumn
\endinput
%%
%% End of file `extreport.cls'.
