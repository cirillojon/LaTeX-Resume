% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{fontawesome5}

% Color definitions
\definecolor{date}{HTML}{1a1a1a} 
\definecolor{primary}{HTML}{1a1a1a}
\definecolor{headings}{HTML}{1a1a1a}
\definecolor{subheadings}{HTML}{1a1a1a}
\definecolor{sectiontitlecolor}{HTML}{1a1a1a}
\definecolor{headingsrulecolor}{HTML}{1a1a1a}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Reg}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}

% Name command
\newcommand{\namesection}[3]{
    \centering{
        \sffamily
        \fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{40pt}{10cm}\selectfont #1 
        \fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #2
    } \\
    \vspace{5pt}
    \centering{ \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
      % \noindent\makebox[\linewidth]{\color{headingsrulecolor}\rule{\textwidth}{0.4pt}}
    \vspace{-15pt}
}

\titlespacing{\section}{0pt}{0pt}{0pt}


% Headings command
\titleformat{\section}{\color{sectiontitlecolor} \scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Custom section command
\newcommand{\customsection}[1]{
  \section{#1}
  \vspace{-.75\baselineskip}
  \noindent\makebox[\linewidth]{\color{headingsrulecolor}\rule{\textwidth}{0.4pt}}
  \vspace{-.5\baselineskip}
}



% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol\\}\fontsize{12pt}{12pt}\selectfont\raggedright\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}


% Location command
\newcommand{\location}[1]{\color{date}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
