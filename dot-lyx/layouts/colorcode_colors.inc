format 104

Requires xcolor

AddToPreamble
\@ifpackageloaded{tcolorbox}{
\def\bbp@R@fg{black!75!white}
\def\bbp@R@bg{blue!15!white}
\def\bbp@R@name{R}

\def\bbp@python@fg{blue!75!black}
\def\bbp@python@bg{yellow!15!white}
\def\bbp@python@name{Python}

\def\bbp@stata@fg{blue!75!white}
\def\bbp@stata@bg{white}
\def\bbp@stata@name{Stata}

\def\bbp@bash@fg{black}
\def\bbp@bash@bg{white!75!black}
\def\bbp@bash@name{Консоль}

\def\bbp@@fg{black}
\def\bbp@@bg{white}
\def\bbp@@name{???}

\newcommand{\bbp@fg}[1]{\csname bbp@#1@fg\endcsname}
\newcommand{\bbp@bg}[1]{\csname bbp@#1@bg\endcsname}
\newcommand{\bbp@name}[1]{\csname bbp@#1@name\endcsname}
}{}
EndPreamble