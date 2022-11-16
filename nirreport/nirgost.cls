%% Набор изменений в базовый класс extreport

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{nirgost}[2022/11/10 v1.0.0 GOST class]

%% ---------------------------------------------------------------------------------------
%% Служебные пакеты.
%% ---------------------------------------------------------------------------------------

\RequirePackage{iftex}
\RequirePackage{etoolbox}
\RequirePackage{kvoptions}

%% ---------------------------------------------------------------------------------------
%% Обработка опций.
%%----------------------------------------------------------------------------------------

% Флаги для принятия решения о подключении пакетов.
\newbool{amspackQ}
\newbool{amssymbQ}
\newbool{eqnumwithinsecQ}
\newbool{hyperrefQ}

\DeclareStringOption[12.5mm]{parindent}[12.5mm]
\ProcessKeyvalOptions*

% Опция для переопределения стандартных математических символов.
% Стандартные символы, которые приняты в России. Для них существуют аналогичные команды, но их сложнее запомнить.
\DeclareOption{rusmathsym}{%
  \booltrue{amssymbQ}%
  \renewcommand{\epsilon} {\ensuremath{\varepsilon}}%
  \renewcommand{\phi}     {\ensuremath{\varphi}}%
  \renewcommand{\kappa}   {\ensuremath{\varkappa}}%
  \renewcommand{\le}      {\ensuremath{\leqslant}}%
  \renewcommand{\leq}     {\ensuremath{\leqslant}}%
  \renewcommand{\ge}      {\ensuremath{\geqslant}}%
  \renewcommand{\geq}     {\ensuremath{\geqslant}}%
  \renewcommand{\emptyset}{\varnothing}%
}
\DeclareOption{amspack}{\booltrue{amspackQ}}
\DeclareOption{eqnumwithinsec}{\booltrue{eqnumwithinsecQ}}
\DeclareOption{hyperref}{\booltrue{hyperrefQ}}

% Все остальные опции обрабатываются как опции класса extarticle.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extreport}}

\ProcessOptions\relax

%% ---------------------------------------------------------------------------------------
%% Загрузка базового класса.
%% ---------------------------------------------------------------------------------------

\LoadClass{extreport}

%% ---------------------------------------------------------------------------------------
%% Языковые настройки.
%% ---------------------------------------------------------------------------------------

\iftutex
  \usepackage{polyglossia}
  \setdefaultlanguage{russian}
  \setotherlanguage{english}
\else
  \RequirePackage{cmap}
  \RequirePackage[T1, T2A]{fontenc}
  \RequirePackage[utf8]{inputenc}
  \RequirePackage[english,russian]{babel}
\fi
\sloppy
\RequirePackage{csquotes}

%% ---------------------------------------------------------------------------------------
%% Математические пакеты.
%% ---------------------------------------------------------------------------------------

% Стандартные пакеты AMS.
\ifbool{amspackQ}{%
  \makeatletter%
  \@ifpackageloaded{amsmath}  {}{\RequirePackage{amsmath}}%
  \@ifpackageloaded{amsfonts} {}{\RequirePackage{amsfonts}}%
  \@ifpackageloaded{amssymb}  {}{\RequirePackage{amssymb}}%
  \@ifpackageloaded{amsthm}   {}{\RequirePackage{amsthm}}%
  \@ifpackageloaded{mathtools}{}{\RequirePackage{mathtools}}%
  \makeatother%
}{}

\ifbool{amssymbQ}{%
  \makeatletter%
  \@ifpackageloaded{amssymb}{}{\RequirePackage{amssymb}}%
  \makeatother%
}{}

% Нумерация формул в пределах section. Команда из пакета amsmath.
\ifbool{eqnumwithinsecQ}{%
  \makeatletter%
  \@ifpackageloaded{amsmath}{}{\RequirePackage{amsmath}}%
  \makeatother%
  \numberwithin{equation}{section}%
}{}

%% ---------------------------------------------------------------------------------------
%% Установка шрифтов.
%% ---------------------------------------------------------------------------------------

\iftutex
  \setmainfont{Times New Roman}
  \setmonofont{Courier New}
  \setsansfont{Arial}

  % Для избежания ошибки о том, что не определён шрифт для кириллических символов.
  \newfontfamily\cyrillicfont{Times New Roman}
  \newfontfamily\cyrillicfonttt{Courier New}
  \newfontfamily\cyrillicfontsf{Arial}
\fi

\RequirePackage{microtype}

%% ---------------------------------------------------------------------------------------
%% Интервалы и отступы
%% ---------------------------------------------------------------------------------------

% Отступы на странице
\RequirePackage[
  a4paper,
  headsep = 0.5 \headsep,
  left=30mm,
  right=15mm,
  top=20mm,
  bottom=20mm
]{geometry}

% Настройка межстрочного интервала
\RequirePackage{setspace}
\doublespacing

% Установка одинаковых отступов и промежутков в тексте.
\frenchspacing

% Первая строка начинается с отступа.
\RequirePackage{indentfirst}

% Размер красной строки.
\makeatletter
\setlength{\parindent}{\nirgost@parindent}
\makeatother

%% ---------------------------------------------------------------------------------------
%% Настройка заголовков.
%% ---------------------------------------------------------------------------------------

\setcounter{secnumdepth}{3}

\RequirePackage[explicit]{titlesec}
% Обычная глава (раздел в терминах ГОСТ):
\titleformat{\chapter}[block]{\hspace{\parindent}\bfseries}{\thechapter}{0.5em}{\bfseries\raggedright #1}
% Глава без номера:
\newcommand\chaptertext{}
\titleformat{name=\chapter,numberless}[block]{\renewcommand\chaptertext{#1}\noindent}{}{0pt}{\centering\bfseries\MakeUppercase{\chaptertext}}[\addcontentsline{toc}{chapter}{\chaptertext}]
% Интервалы вокруг заголовков глав:
\titlespacing{\chapter}{0mm}{0mm}{0mm}

% Обычный раздел (подраздел в терминах ГОСТ):
\titleformat{\section}[block]{\hspace{\parindent}\bfseries}{\thesection}{0.5em}{\bfseries\raggedright #1}
% Интервалы вокруг заголовков разделов:
\titlespacing{\section}{0mm}{0mm}{0mm}

% Обычный подраздел (пункт в терминах ГОСТ):
\titleformat{\subsection}[runin]{}{\thesubsection}{0.5em}{\\ \mbox{\hspace{\parindent}}#1}[.\mbox{ }]
% Интервалы вокруг заголовков подразделов:
\titlespacing{\subsection}{\parindent}{0mm}{0mm}

% Обычный подподраздел (подпункт в терминах ГОСТ):
\titleformat{\subsubsection}[runin]{}{\thesubsubsection}{0.5em}{\\ \mbox{\hspace{\parindent}}#1}[.\mbox{ }]
% Интервалы вокруг заголовков подподразделов:
\titlespacing{\subsubsection}{\parindent}{0mm}{0mm}

%% ---------------------------------------------------------------------------------------
%% Настройка содержания
%% ---------------------------------------------------------------------------------------

\setcounter{tocdepth}{1}

\RequirePackage{titletoc}
% Главы
\titlecontents{chapter}[0em]{\bfseries}%
  {\thecontentslabel\quad}%numbered chapters
  {}%numberless chapter
  {\titlerule*[1.2pc]{.}\contentspage}
% Разделы
\titlecontents{section}[1.72em]{}%
  {\thecontentslabel.\enspace}%numbered sections
  {}%numberless section
  {\titlerule*[1.2pc]{.}\contentspage}%

\renewcommand\contentsname{Содержание}

%----------------------------------------------------------------------------------------
% Настройка подписей таблиц и рисунков.
% ---------------------------------------------------------------------------------------

\RequirePackage{chngcntr}
\RequirePackage[tableposition=top]{caption}
\captionsetup{%
  labelsep=endash,%
  hypcap=false
}

% Выравнивание подписей к таблицам сверху справа.
\captionsetup[table]{%
  position=above,%
  singlelinecheck=off,%
  justification=raggedright}
\counterwithout{table}{chapter}

% Выравнивание подписей к рисункам снизу по центру.
\captionsetup[figure]{%
  position=below,%
  singlelinecheck=off,%
  justification=centering%
}
\counterwithout{figure}{chapter}
\counterwithout{equation}{chapter}


\AtEndPreamble{
  \RequirePackage[unicode=true,
    colorlinks=true,
    urlcolor=blue,
    linkcolor=black,
    citecolor=black,
    breaklinks]{hyperref}
}
