%%
%% This is file `puthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% puthesis.dtx  (with options: `class')
%%
%% IMPORTANT NOTICE:
%%
%% For the copyright see the source file.
%%
%% You are *not* allowed to modify this file.
%%
%% You are *not* allowed to distribute this file.
%% For distribution of the original source see
%% the terms for copying and modification in the file  puthesis.dtx.
%%
\input{psfig}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{puthesis}
         [1997/04/16 v1.3 Princeton University Thesis class]
\RequirePackage{setspace}
\usepackage{epsfig}
\newcounter{subyear}
\setcounter{subyear}{\number\year}
\def\submitted#1{\gdef\@submitted{#1}}
\def\@submittedyear{\ifnum\month>10 \stepcounter{subyear}\thesubyear
  \else\thesubyear\fi}
\def\@submittedmonth{\ifnum\month>10 January\else\ifnum\month>5 November
  \else June\fi\fi}
\long\def\@abstract{\@latex@error{No \noexpand\abstract given}\@ehc}
\newcommand*{\frontmatter}{
  \pagenumbering{roman}
  }
\newcommand*{\mainmatter}{\pagenumbering{arabic}}
\newcommand*{\makelot}{}
\newcommand*{\makelof}{}
\newcommand*{\makelos}{}
\newcommand*{\begincmd}{
%\singlespacing
\doublespacing%\singlespacing  %the size
\frontmatter\maketitlepage
\setcounter{page}{1}
\makeabstract\makeacknowledgements\makededication
\addcontentsline{toc}{section}{Table of Contents}\tableofcontents
\clearpage
%\addcontentsline{toc}{section}{List of Tables}
%\listoftables\clearpage
\addcontentsline{toc}{section}{List of Figures}
\listoffigures\clearpage\makelos\clearpage\mainmatter}
\def\@submitted{\@submittedmonth~\@submittedyear}
\def\@dept{Mathematics}
\def\@deptpref{Department of}
\def\departmentprefix#1{\gdef\@deptpref{#1}}
\def\department#1{\gdef\@dept{#1}}
\long\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\def\dedication#1{\gdef\@dedication{#1}}


\newcommand{\maketitlepage}{{
  \thispagestyle{empty}
  \sc
  \vspace*{0in}
  \begin{center}
    \LARGE Nanyang Technological University\\
    %\ \\%\@title
  \end{center}

\vspace{.1in}

\begin{center}
  \psfig{figure=ntu.eps,height=2.7in}
\end{center}

%\vspace{.1in}

\begin{center}
%\Large Sketch-Based Interactive \\Digital Geometry Processing
\Large Sketch-Based 3D Modeling and Reconstruction
\end{center}

%\vspace{.1in}


  %\vspace{.2in}
  \begin{center}
     by\\
   \@author
  \end{center}
%  %\vspace{.1in}
%  \begin{center}
%    Supervisor\\
%  Zheng Jianmin
%  \end{center}

\vspace{.4in}

  \begin{center}
  A Thesis Submitted to the School of Computer Engineering \\of the Nanyang Technological University
\\in Partial Fulfillment of the Requirements for the Degree of \\

%    This report is presented for the confirmation for admission to the\\
%    degree of Doctor of Philosophy of Engineering program of\\
%    Nanyang Technological University

  \end{center}

\vspace{.1in}
  \begin{center}
   Doctor of Philosophy (PhD)
  \end{center}

  %\vspace{.1in}

  %\begin{center}
  %\end{center}


%%%  \vspace{.1in}
%%%  \begin{center}
%%% School of Computer Engineering\\
%%% Nanyang Technological University\\

%%%  \end{center}
  \vspace{.1in}
  \begin{center}
   2012

  \end{center}
  \clearpage
  }}
\newcommand*{\makeabstract}{
  \newpage
  \addcontentsline{toc}{section}{Abstract}
  \begin{center}
  \Large \textbf{Abstract}
  \end{center}
  \@abstract
  \clearpage
  }
\def\makeacknowledgements{
  \ifx\@acknowledgements\undefined
  \else
    \addcontentsline{toc}{section}{Acknowledgements}
    \begin{center}
      \Large \textbf{Acknowledgements}
    \end{center}
    \@acknowledgements
    \clearpage
  \fi
  }
\def\makededication{
  \ifx\@dedication\undefined
  \else
    \vspace*{1.5in}
    \begin{flushright}
      \@dedication
    \end{flushright}
    \clearpage
  \fi
  }
\DeclareOption{myorder}{
  \renewcommand*{\begincmd}{\doublespacing}}
\DeclareOption{lot}{\renewcommand*{\makelot}{
  \addcontentsline{toc}{section}{List of Tables}\listoftables}}
\DeclareOption{lof}{\renewcommand*{\makelof}{
  \addcontentsline{toc}{section}{List of Figures}\listoffigures}}
\DeclareOption{los}{
  \renewcommand*{\makelos}{
    \RequirePackage{losymbol}
    \section*{List of Symbols\@mkboth {LIST OF SYMBOLS}{LIST OF SYMBOLS}}
    \@starttoc{los}
    \addcontentsline{toc}{section}{List of Symbols}
  }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[12pt,a4paper]{report}
\setlength{\hoffset}{-1in}
\setlength{\voffset}{-1in}
\setlength{\oddsidemargin}{3.7cm}
\setlength{\evensidemargin}{3.7cm}
\setlength{\topmargin}{2cm}
\setlength{\textheight}{25.7cm}
\setlength{\textwidth}{15.3cm}
\setlength{\headheight}{14.5pt}
\addtolength{\textheight}{-\headheight}
\addtolength{\textheight}{-\headsep}
\addtolength{\textheight}{-\footskip}
\long\def\abstract#1{\gdef\@abstract{#1}}
\AtBeginDocument{\begincmd}
\endinput
%%
%% End of file `puthesis.cls'.
