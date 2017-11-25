%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom-beamer}[2014/11/23 custom-beamer class]

\LoadClass[10pt,a4paper,compress]{beamer}%\LoadClass[10pt,a4paper,compress,aspectratio=169]{beamer}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[brazil]{babel}

\RequirePackage{hyperref}
%\RequirePackage[alf,abnt-emphasize=bf]{abntex2cite}

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



%\pgfplotsset{compat=1.10}
%\citebrackets[]
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

\usetheme{Madrid}

\useoutertheme{split}
\setbeamertemplate{headline}{}
\beamertemplatenavigationsymbolsempty

\addtobeamertemplate{frametitle}{\let\insertframetitle\insertsectionhead}{}
\addtobeamertemplate{frametitle}{\let\insertframesubtitle\insertsubsectionhead}{}

\makeatletter
    \CheckCommand*\beamer@checkframetitle{\@ifnextchar\bgroup\beamer@inlineframetitle{}}
    \renewcommand*\beamer@checkframetitle{\global\let\beamer@frametitle\relax\@ifnextchar\bgroup\beamer@inlineframetitle{}}
\makeatother

\newcommand*\oldmacro{}\let\oldmacro\insertshorttitle\renewcommand*\insertshorttitle{\oldmacro\hfill\insertframenumber\,/\,\inserttotalframenumber}

\newcommand{\questionspage}{%
\begin{figure}[!htbp] \centering%
\begin{tikzpicture}%
\draw (0,0) circle [radius=3.8] node [font=\fontsize{150}{150}\sffamily] {?};%
\end{tikzpicture}%
\end{figure}
}

\newcommand{\spaceremove}{\vspace{-1.5em}}
