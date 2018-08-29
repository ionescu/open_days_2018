% --*-Latex-*--

\documentclass[colorhighlight,coloremph]{beamer}
\usetheme{boxes}
\usetheme{Madrid} % Lots of space (good), but no section headings
%\usetheme{Hannover}% Sections heading but too much wasted space
%\usetheme{Dresden}
%\usetheme{Warsaw}

\usepackage{natbib}
\usepackage{color,soul}
\usepackage{graphicx}
\usepackage{hyperref} %% for run: links
%include dslmagda.fmt
%include slides.format

%%\input{macros.TeX}

% Changing the way code blocks are presented:
% \renewcommand\hscodestyle{%
%    \setlength\leftskip{-1cm}%
%    \small
% }

\newenvironment{myquote}
  {\begin{exampleblock}{}}
  {\end{exampleblock}}

\addheadbox{section}{\quad \tiny Oxford, 2018-09-01}
\title[What Is a Mathematical Property?]{What Is a Mathematical Property?}

\author[C. Ionescu]
       {Cezar Ionescu \\
        cezar.ionescu@@conted.ox.ac.uk}

\date{1st of September 2018}
\usepackage{tikz}
\usetikzlibrary{shapes.callouts} 

\pgfkeys{%
    /calloutquote/.cd,
    width/.code                   =  {\def\calloutquotewidth{#1}},
    position/.code                =  {\def\calloutquotepos{#1}}, 
    author/.code                  =  {\def\calloutquoteauthor{#1}},
    /calloutquote/.unknown/.code   =
    {\let\searchname=\pgfkeyscurrentname
                                 \pgfkeysalso{\searchname/.try=#1,                                
    /tikz/\searchname/.retry=#1},\pgfkeysalso{\searchname/.try=#1,
                                  /pgf/\searchname/.retry=#1}}
                            }  


\newcommand\calloutquote[2][]{%
       \pgfkeys{/calloutquote/.cd,
         width               = 5cm,
         position            = {(0,-1)},
         author              = {}}
  \pgfqkeys{/calloutquote}{#1}                   
  \node [rectangle callout,callout relative
    pointer={\calloutquotepos},text
    width=\calloutquotewidth,/calloutquote/.cd,
     #1] (tmpcall) at (0,0) {#2};
  \node at (tmpcall.pointer){\calloutquoteauthor};    
}  

\begin{document}
\setbeamertemplate{navigation symbols}{}
\date{}

\def\commentbegin{\quad\{\ }
\def\commentend{\}}

\begin{frame}

\maketitle

%% \begin{exampleblock}{Style example}
%% \begin{spec}
%% Forall (eps elemOf Real) ((eps > 0)  =>  (Exists (a elemOf A) ((abs(a - sup A)) < eps)))
%% \end{spec}
%% \end{exampleblock}


\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Examples of mathematical objects}
  \vfill
>  Nat = {0, 1, 2, 3, ...}
  \vfill
> Trg = {(A, B, C); A, B, C points inn the plane }
  \vfill
> Nat x Nat  =   {  (m, n); m `elem` Nat, n `elem` Nat}
>
>            =   {  (0, 0), (0, 1), (0, 2), (0, 3), ...,
>                   (1, 0), (1, 1), (1, 2), (1, 3), ...,
>                   (2, 0), (2, 1), (2, 2), (2, 3), ...,
>                   ...}
\vfill

\end{frame}

%% -------------------------------------------------------------------
\begin{frame}
  \frametitle{Examples of mathematical properties}
  \vfill
> Nat = {0, 1, 2, 3, ...}
> Trg = {(A, B, C); A, B, C points inn the plane }
> Nat x Nat =   {(m, n); m `elem` Nat, n `elem` Nat}
>               {(0, 0), (0, 1), ..., (1, 0), (1, 1), ...}
  \vfill
  \begin{itemize}
  \item even (applies to |Nat|, not |Trg|)
    \vfill
  \item equilateral (applies to |Trg|, not |Nat|)
    \vfill
  \item is equal to |2| (applies to |Nat|)
    \vfill
  \item first smaller than the second (applies to |Nat x Nat|)
  \end{itemize}
\vfill
\end{frame}

%% -------------------------------------------------------------------
\begin{frame}
  \frametitle{Examples of non-mathematical properties}
  \vfill
> Nat = {0, 1, 2, 3, ...}
> Trg = {(A, B, C); A, B, C points inn the plane }
> Nat x Nat =   {(m, n); m `elem` Nat, n `elem` Nat}
>               {(0, 0), (0, 1), ..., (1, 0), (1, 1), ...}
  \vfill
  \begin{itemize}
  \item is big (applied to |Nat|, could also apply to |Trg|)
    \vfill
  \item is pretty (applied to |Trg|, could also apply to |Nat|)
    \vfill
  \item is interesting, friendly, heavy, \ldots
    \vfill
  \end{itemize}
\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{The extensional view}
  \vfill
> Nat = {0, 1, 2, 3, ...}
> Trg = {(A, B, C); A, B, C points inn the plane }
> Nat x Nat =   {(m, n); m `elem` Nat, n `elem` Nat}
>               {(0, 0), (0, 1), ..., (1, 0), (1, 1), ...}
  \vfill
  \begin{itemize}
  \item even |= {0, 2, 4, 6, 8, 10, ...}|
    \vfill
  \item equilateral |= {(A, B, C); AB = AC = BC}|
    \vfill
  \item is equal to |2| |= {2}|
    \vfill
  \item first smaller than the second |= {(0, 1), (0, 2), ... (1, 2), ...}|
  \end{itemize}
\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{The intensional view}
  \vfill
> Nat = {0, 1, 2, 3, ...}
> Trg = {(A, B, C); A, B, C points inn the plane }
> Nat x Nat =   {(m, n); m `elem` Nat, n `elem` Nat}
>               {(0, 0), (0, 1), ..., (1, 0), (1, 1), ...}
  \vfill
  \begin{itemize}
  \item even 
    \vfill
  \item equilateral |= {(A, B, C); AB = AC = BC}|
    \vfill
  \item is equal to |2| |= {2}|
    \vfill
  \item first smaller than the second |= {(0, 1), (0, 2), ... (1, 2), ...}|
  \end{itemize}
\vfill
\end{frame}

%% -------------------------------------------------------------------


\end{document}
