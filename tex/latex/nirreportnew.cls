\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{nirreportnew}[1996/10/08 v1.0 Non Standard LaTeX document class]

\LoadClassWithOptions{extreport}

\newif\if@papersize
	\@papersizefalse
	\@for\opt:=\@classoptionslist\do{%
	\ifx{a4paper}\opt \@papersizetrue\fi%
}

\if@papersize\else
	\ClassError{nirreportnew}{%
		Use A4 paper%
	}{%
		State Standard requires A4 papersize%
	}
\fi

%% -----------------------------------------------------------------------------
%% Геометрия и размеры
%% -----------------------------------------------------------------------------

\RequirePackage{setspace}
\onehalfspacing

\setlength\parindent{12.5mm}

%% -----------------------------------------------------------------------------
%% Списки
%% -----------------------------------------------------------------------------

\renewcommand\theenumi   {\@alph\c@enumi}
\renewcommand\theenumii  {\@arabic\c@enumi}
\renewcommand\theenumiii {\@arabic\c@enumii}
\renewcommand\theenumiv  {\@Alph\c@enumiv}

\renewcommand\labelenumi   {\theenumi)}
\renewcommand\labelenumii  {\theenumii)}
\renewcommand\labelenumiii {\cdash---}

\renewcommand\p@enumii  {\theenumi}
\renewcommand\p@enumiii {\theenumi(\theenumii)}
\renewcommand\p@enumiv  {\p@enumiii\theenumiii}

\renewcommand\labelitemi   {\cdash---}
\renewcommand\labelitemii  {\cdash---}
\renewcommand\labelitemiii {\cdash---}
\renewcommand\labelitemiv  {\cdash---}

%% -----------------------------------------------------------------------------
%% Счетчики страниц, таблиц и т. д.
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

%% -----------------------------------------------------------------------------
%% Окружения НИРа
%% -----------------------------------------------------------------------------
\newcommand*\Nir@Keywords{}
\newcommand\NirKeywords[1]{%
	\renewcommand\Nir@Keywords{#1}}

%% ---- Реферат -----
\newenvironment{abstract}{%
	\addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
	\chapter*{\abstractname}%
	\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}%

	Отчет \totpag~с., \totfig~рис., \tottab~табл., \totbib~ист., \totapp~прил.

	\noindent\MakeUppercase{\Nir@Keywords}\par
}
{}

%% ---- Исполители -----
\newenvironment{executors}{%
	\addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
	\chapter*{\executorsname}%
	\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}%
	\noindent\begin{tabular}{p{80mm}cp{45mm}}
		}{%
	\end{tabular}
}
\newcommand\executor[3]{#1 & \ultext[7em]{\Nir@text@Signature} & \makecell[tl]{#2\\(#3)} \\}

%% ---- Определения ----
\newenvironment{nirdefslist}{%
	\addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
	\chapter*{\nirdefsname}%
	\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}%
	\Nir@text@nirdefslist\par
	\begin{description}
		}{%
	\end{description}
}

%% ---- Сокращения ----
\newenvironment{nirabbrlist}{%
	\addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
	\chapter*{\nirabbrname}%
	\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}%
	\Nir@text@nirabbrlist\par
	\begin{description}
		}{%
	\end{description}
}
