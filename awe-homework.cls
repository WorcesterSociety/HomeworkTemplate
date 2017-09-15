% ---------------------------------------------------------------------
% Identification
% ---------------------------------------------------------------------

\ProvidesClass{awe-homework}
\NeedsTeXFormat{LaTeX2e}

% ---------------------------------------------------------------------
% Class Options
% ---------------------------------------------------------------------

% Inherit options of article.
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% ---------------------------------------------------------------------
% Package Dependencies
% ---------------------------------------------------------------------

% Math symbols.
\RequirePackage{amsmath}
% More math symbols.
\RequirePackage{amssymb}
% Colored text.
\RequirePackage{color}
% Better enumerations.
\RequirePackage{enumerate}
% More customization for enumerations.
\RequirePackage{enumitem}
% Fancy headers and footers!
\RequirePackage{fancyhdr}
% Configure page layout.
\RequirePackage{geometry}
% Automatic hyperlinks!
\RequirePackage{hyperref}
% Configure text hyphenation.
\RequirePackage{hyphenat}
% Even more math symbols.
\RequirePackage{mathabx}
% Typesetting formulas and inference rules.
\RequirePackage{mathpartir}
% Space saving efforts.
\RequirePackage{microtype}
% Syntax highlighting.
\RequirePackage{minted}
% Support for multicolumn, used for lists.
\RequirePackage{multicol}
% Used for Tikz pictures, e.g. for finite state machines.
\RequirePackage{tikz}

% ---------------------------------------------------------------------
% Color Definitions
% ---------------------------------------------------------------------

\definecolor{belize-hole}{RGB}{41, 128, 185}
\definecolor{code}{RGB}{241, 240, 236}

% ---------------------------------------------------------------------
% Configuration Commands
% ---------------------------------------------------------------------

% Setters
\newcommand*{\name}[1]{\def\@name{#1}}
\newcommand*{\doctitle}[1]{\def\@doctitle{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}

% Getters
\newcommand*{\getname}{\@name}
\newcommand*{\getdoctitle}{\@doctitle}
\newcommand*{\getemail}{\@email}

% ---------------------------------------------------------------------
% Layout Setup
% ---------------------------------------------------------------------

% Margins
\geometry{margin=1in}

% Header and footer
\pagestyle{fancy}
\lhead{\getdoctitle}
\rhead{\getname}
\cfoot{\thepage}

% Hyperlinks
\hypersetup{
  colorlinks=true,
  linkcolor=black,
  citecolor=black,
  filecolor=black,
  urlcolor=belize-hole
}

% Footnote style
\renewcommand{\thefootnote}{[\arabic{footnote}]}

% Non-bold description enumerations
\setlist[description]{font=\normalfont}

% Syntax highlighting
\setminted{autogobble, bgcolor=code}
\setmintedinline{bgcolor=white}

% ---------------------------------------------------------------------
% Layout Commands
% ---------------------------------------------------------------------


\SetEnumitemKey{twocol}{%
  before=\raggedcolumns\begin{multicols}{2},
  after=\end{multicols}
}

\SetEnumitemKey{threecol}{%
  before=\raggedcolumns\begin{multicols}{3},
  after=\end{multicols}
}

\newcommand*{\makeheader}{%
  \thispagestyle{plain}
  \begin{center}
    {\Large \getdoctitle} \\
    \getname \\
    \getemail \\
  \end{center}
}

\newcommand*{\question}[2]{%
  \vspace{.25in}\hrule\vspace{0.5em}
  \noindent{\bf#1.} #2\vspace{0.5em}
  \hrule\vspace{.25in}
}
