%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom-article}[2014/11/23 custom-article class]

\LoadClass[12pt,a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[brazil]{babel}

\RequirePackage{hyperref}
\RequirePackage[alf,abnt-emphasize=bf]{abntex2cite}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}

\RequirePackage{color}
\RequirePackage{xcolor}

\RequirePackage{tikz}
\RequirePackage{pgfplots}

\RequirePackage{colortbl}
\RequirePackage{multirow}

\RequirePackage{listings}

\RequirePackage{algorithm}
\RequirePackage{algpseudocode}

\RequirePackage[portuguese]{nomencl}%\makenomenclature

\RequirePackage[left=1.6cm,right=1.6cm,top=1.8cm,bottom=4.0cm,marginparwidth=3.4cm]{geometry}

%\pgfplotsset{compat=1.10}
\citebrackets[]
\lstset{
	numbers=left,                                               % where to put the line-numbers
	numberstyle=\small \ttfamily \color[rgb]{0.4,0.4,0.4},      % style used for the linenumbers
	showspaces=false,                                           % show spaces adding special underscores
	showstringspaces=false,                                     % underline spaces within strings
	showtabs=false,                                             % show tabs within strings adding particular underscores
	frame=lines,                                                % add a frame around the code
	tabsize=4,                                                  % default tabsize: 4 spaces
	breaklines=true,                                            % automatic line breaking
	breakatwhitespace=false,                                    % automatic breaks should only happen at whitespace
	basicstyle=\ttfamily,
	%identifierstyle=\color[rgb]{0.3,0.133,0.133},              % colors in variables and function names, if desired.
	keywordstyle=\color[rgb]{0.133,0.133,0.6},
	commentstyle=\color[rgb]{0.133,0.545,0.133},
	stringstyle=\color[rgb]{0.627,0.126,0.941},
}

\setlength{\parskip}{\baselineskip}
\setlength{\parindent}{0cm}

\newcommand\Originaltitle{}
\let\Originaltitle\title
\renewcommand*{\title}[1]{%
	\Originaltitle{#1}%
	\renewcommand*{\thetitle}{#1}%
}
\newcommand*{\thetitle}{}

\newcommand\Originalauthor{}
\let\Originalauthor\author
\renewcommand*{\author}[1]{%
	\Originalauthor{#1}%
	\renewcommand*{\theauthor}{#1}%
}
\newcommand*{\theauthor}{}

\newcommand\Originaldate{}
\let\Originaldate\date
\renewcommand*{\date}[1]{%
  \Originaldate{#1}%
  \renewcommand*{\thedate}{#1}%
}
\newcommand*{\thedate}{}

\providecommand{\thediscipline}{}
\newcommand{\discipline}[1]{\renewcommand{\thediscipline}{#1}}

\providecommand{\thesubdiscipline}{}
\newcommand{\subdiscipline}[1]{\renewcommand{\thesubdiscipline}{#1}}

\def\@maketitle{

\pagenumbering{Alph}

\begin{titlepage}

\thispagestyle{empty}

\newcommand{\HRule}{\rule{\linewidth}{0.2em}}

\begin{center}
{\HRule \par}
{\LARGE \thediscipline \par}
{\LARGE \thesubdiscipline \par}
{\HRule \par} \vskip 3em
{\LARGE \thetitle \par} \vskip 3em
{\large \theauthor \par} \vskip 3em
{\large \thedate \par} \vfill
\includegraphics[scale=0.18]{logo-each} \par
{\large Escola de Artes Ciências e Humanidades\\Universidade de São Paulo \par}
\end{center}

\end{titlepage}

\pagenumbering{arabic}

}
