% --*-Latex-*--

\documentclass[colorhighlight,coloremph]{beamer}
\usetheme{boxes}
\usetheme{Madrid} % Lots of space (good), but no section headings
%\usetheme{Hannover}% Sections heading but too much wasted space
%\usetheme{Dresden}
%\usetheme{Warsaw}

\usepackage{natbib}
\usepackage{xcolor,soul}
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
  \frametitle{Natural numbers}
  \vfill
>  Nat = {0, 1, 2, 3, ...}
  \vfill
  \begin{quote}
     \emph{God created the natural numbers. Everything else is the work of man.}
  \end{quote}
  \rightline{--- Leopold Kronecker (1823-1891)}
  \vfill

\end{frame}

%% -------------------------------------------------------------------
\begin{frame}
  \frametitle{Examples of mathematical properties}
  \vfill
> Nat = {0, 1, 2, 3, ...}
  \vfill
  \begin{itemize}
  \item even 
    \vfill
  \item equals |2|
    \vfill
  \item smaller than |3|
    \vfill
  \item prime
    \vfill
  \item \ldots
    \vfill
  \end{itemize}
\vfill
\end{frame}

%% -------------------------------------------------------------------
\begin{frame}
  \frametitle{Examples of non-mathematical properties}
  \vfill
> Nat = {0, 1, 2, 3, ...}
  \vfill
  \begin{itemize}
  \item is big
    \vfill
  \item is pretty
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
  \vfill
  \begin{itemize}
  \item even |= {0, 2, 4, 6, 8, ...}|
    \vfill
  \item equals |2| |= {2}|
    \vfill
  \item smaller than |3| |= {0, 1, 2}|
    \vfill
  \item prime |= {2, 3, 5, 7, 11, ...}|
    \vfill
  \item \ldots
    \vfill
  \end{itemize}
\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{The extensional view}
  \vfill
> Nat = {0, 1, 2, 3, ...}
  \vfill
  \begin{itemize}
  \item even |= {n suth  n divisible by 2}|
    \vfill
  \item equals |2| |= {n suth n = 2}|
    \vfill
  \item smaller than |3| |= {n suth n < 3}|
    \vfill
  \item prime |= {n suth n has exactly two divisors}|
    \vfill
  \item \ldots
    \vfill
  \end{itemize}
\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{The extensional view}
  \vfill
> Nat = {0, 1, 2, 3, ...}
  \vfill
  \begin{itemize}
  \item even |= {n suth  ndivisibleby2}|
    \vfill
  \item equals |2| |= {n suth nis2}|
    \vfill
  \item smaller than |3| |= {n suth nsm3}|
    \vfill
  \item prime |= {n suth n2div}|
    \vfill
  \item \ldots
    \vfill
  \end{itemize}
\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{The \textbf{intensional} view}
  \vfill
> Nat = {0, 1, 2, 3, ...}
\vfill
Properties are functions:

\begin{center}
\includegraphics[width=.7\linewidth]{func.png}  
\end{center}
\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Function}
  \textbf{Definition:}  Let |A| and |B| sets.
  A function |f : A -> B| is a \emph{correspondence} between the elements of |A|
  and those of |B| that associates to \emph{each} element of |A| a \emph{unique} element of |B|.  The
  unique element associated with |a `elem` A| is denoted |f(a)|.
  \vfill
  Thus, |if| |a `elem` A| and |f : A -> B|, |then| |f(a) `elem` B|.
  \vfill
  Example:
  
>  A  =  {club , diam , heart , spade}
>  B  =  {crc , trg , rct}
\vfill
>  warr  f(club)   =  crc
>  warr  f(diam)   =  trg
>  warr  f(heart)  =  trg
>  warr  f(spade)  =  crc

  \vfill
\end{frame}
%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Function}
  Another way of picturing the same function:
  
>  A  =  {club , diam , heart , spade}
>  B  =  {crc , trg , rct}

\vfill

\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 1) circle (0.8);
  \node at (0, 2.0) {\textit{A}};
  \node (1) at (0, 1.5) {|club|};
  \node (2) at (0, 1.2) {|diam|};
  \node (3) at (0, 0.9) {|heart|};
  \node (4) at (0, 0.6) {|spade|};
  \draw (3, 1) circle (0.8);
  \node at (3, 2.0) {\textit{B}};
  \node (a) at (3, 1.4) {|crc|};
  \node (b) at (3, 1.1) {|trg|};
  \node (c) at (3, 0.7) {|rct|};
  \draw[red, ->] (1) -- (a);
  \draw[red, ->] (2) -- (b);
  \draw[red, ->] (3) -- (b);
  \draw[red, ->] (4) -- (a);
\end{tikzpicture}

\vfill
\end{frame}
%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Surjective function}
  An example of an \emph{onto}, or surjective, function:
  
>  A  =  {club , diam , heart , spade}
>  B  =  {crc , trg , rct}

\vfill

\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 1) circle (0.8);
  \node at (0, 2.0) {\textit{A}};
  \node (1) at (0, 1.5) {|club|};
  \node (2) at (0, 1.2) {|diam|};
  \node (3) at (0, 0.9) {|heart|};
  \node (4) at (0, 0.6) {|spade|};
  \draw (3, 1) circle (0.8);
  \node at (3, 2.0) {\textit{B}};
  \node (a) at (3, 1.4) {|crc|};
  \node (b) at (3, 1.1) {|trg|};
  \node (c) at (3, 0.7) {|rct|};
  \draw[red, ->] (1) -- (a);
  \draw[red, ->] (2) -- (b);
  \draw[red, ->] (3) -- (b);
  \draw[red, ->] (4) -- (c);
\end{tikzpicture}

\vfill
\end{frame}
%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Surjective function}
  We cannot have functions from a ``smaller'' set \emph{onto} a ``bigger'' set.
  
>  A  =  {club , diam , heart , spade}
>  B  =  {crc , trg , rct}

\vfill

\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 1) circle (0.8);
  \node at (0, 2.0) {\textit{A}};
  \node (1) at (0, 1.5) {|club|};
  \node (2) at (0, 1.2) {|diam|};
  \node (3) at (0, 0.9) {|heart|};
  \node (4) at (0, 0.6) {|spade|};
  \draw (3, 1) circle (0.8);
  \node at (3, 2.0) {\textit{B}};
  \node (a) at (3, 1.4) {|crc|};
  \node (b) at (3, 1.1) {|trg|};
  \node (c) at (3, 0.7) {|rct|};
  \node (d) at (2, 0.5) {|?|};
  \draw[red, ->] (a) -- (1);
  \draw[red, ->] (b) -- (2);
  \draw[red, ->] (c) -- (3);
  \draw[red, ->] (d) -- (4);
\end{tikzpicture}

\vfill
\end{frame}
%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Injective function}
  An example of a \emph{one-to-one}, or injective, function:
  
>  A  =  {club , diam , heart , spade}
>  B  =  {crc , trg , rct}

\vfill

\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 1) circle (0.8);
  \node at (0, 2.0) {\textit{A}};
  \node (1) at (0, 1.5) {|club|};
  \node (2) at (0, 1.2) {|diam|};
  \node (3) at (0, 0.9) {|heart|};
  \node (4) at (0, 0.6) {|spade|};
  \draw (3, 1) circle (0.8);
  \node at (3, 2.0) {\textit{B}};
  \node (a) at (3, 1.4) {|crc|};
  \node (b) at (3, 1.1) {|trg|};
  \node (c) at (3, 0.7) {|rct|};
  \draw[red, ->] (a) -- (1);
  \draw[red, ->] (b) -- (2);
  \draw[red, ->] (c) -- (3);
\end{tikzpicture}

\vfill
\end{frame}
%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Injective function}
  We cannot have a \emph{one-to-one} function from a ``bigger'' set to a ``smaller'' set:
  
>  A  =  {club , diam , heart , spade}
>  B  =  {crc , trg , rct}

\vfill

\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 1) circle (0.8);
  \node at (0, 2.0) {\textit{A}};
  \node (1) at (0, 1.5) {|club|};
  \node (2) at (0, 1.2) {|diam|};
  \node (3) at (0, 0.9) {|heart|};
  \node (4) at (0, 0.6) {|spade|};
  \draw (3, 1) circle (0.8);
  \node at (3, 2.0) {\textit{B}};
  \node (a) at (3, 1.4) {|crc|};
  \node (b) at (3, 1.1) {|trg|};
  \node (c) at (3, 0.7) {|rct|};
  \node (d) at (2, 0.5) {|?|};
  \draw[red, ->] (1) -- (a);
  \draw[red, ->] (2) -- (b);
  \draw[red, ->] (3) -- (c);
  \draw[red, ->] (4) -- (d);
\end{tikzpicture}

\vfill
\end{frame}
%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Functions and set cardinalities}
  \vfill
  If |f : A -> B| is \ldots
  \begin{itemize}
    \vfill\item \emph{onto}, then the cardinality of |A| is at least equal to that of |B|
    \vfill\item \emph{one-to-one}, then the cardinality of |A| is at most equal to that of |B|
    \vfill\item \emph{onto} and \emph{one-to-one}, then the cardinality of |A| is equal to that of |B|
  \end{itemize}
  \vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Properties as functions}
> Nat = {0, 1, 2, 3, ...}, Bool  =  {True, False}
> even : Nat -> Bool

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Nat|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  \draw (3, 1) circle (0.7);
  \node at (3, 2.0) {|Bool|};
  \node (t) at (3, 1.3) {|True|};
  \node (f) at (3, 0.7) {|False|};
  \draw[red, ->] (0) -- (t);
  \draw[blue, ->] (1) -- (f);
  \draw[red, ->] (2) -- (t);
  \draw[blue, ->] (3) -- (f);
  \draw[red, ->] (4) -- (t);
\end{tikzpicture}

\end{center}

\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Properties as functions}
> Nat = {0, 1, 2, 3, ...}, Bool  =  {True, False}
> eq2 : Nat -> Bool

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Nat|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  \draw (3, 1) circle (0.7);
  \node at (3, 2.0) {|Bool|};
  \node (t) at (3, 1.3) {|True|};
  \node (f) at (3, 0.7) {|False|};
  \draw[blue, ->] (0) -- (f);
  \draw[blue, ->] (1) -- (f);
  \draw[red, ->] (2) -- (t);
  \draw[blue, ->] (3) -- (f);
  \draw[blue, ->] (4) -- (f);
  \draw[blue, ->] (5) -- (f);
\end{tikzpicture}

\end{center}

\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Properties as functions}
> Nat = {0, 1, 2, 3, ...}, Bool  =  {True, False}
> smaller3 : Nat -> Bool

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Nat|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  \draw (3, 1) circle (0.7);
  \node at (3, 2.0) {|Bool|};
  \node (t) at (3, 1.3) {|True|};
  \node (f) at (3, 0.7) {|False|};
  \draw[red, ->] (0) -- (t);
  \draw[red, ->] (1) -- (t);
  \draw[red, ->] (2) -- (t);
  \draw[blue, ->] (3) -- (f);
  \draw[blue, ->] (4) -- (f);
  \draw[blue, ->] (5) -- (f);
\end{tikzpicture}

\end{center}

\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Properties as functions}
> Nat = {0, 1, 2, 3, ...}, Bool  =  {True, False}
> prime : Nat -> Bool

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Nat|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  \draw (3, 1) circle (0.7);
  \node at (3, 2.0) {|Bool|};
  \node (t) at (3, 1.3) {|True|};
  \node (f) at (3, 0.7) {|False|};
  \draw[blue, ->] (0) -- (f);
  \draw[blue, ->] (1) -- (f);
  \draw[red, ->] (2) -- (t);
  \draw[red, ->] (3) -- (f);
  \draw[blue, ->] (4) -- (f);
\end{tikzpicture}

\end{center}

\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Properties as functions}
> Nat = {0, 1, 2, 3, ...}, Bool  =  {True, False}
> always : Nat -> Bool

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Nat|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  \draw (3, 1) circle (0.7);
  \node at (3, 2.0) {|Bool|};
  \node (t) at (3, 1.3) {|True|};
  \node (f) at (3, 0.7) {|False|};
  \draw[red, ->] (0) -- (t);
  \draw[red, ->] (1) -- (t);
  \draw[red, ->] (2) -- (t);
  \draw[red, ->] (3) -- (t);
  \draw[red, ->] (4) -- (t);
  \draw[red, ->] (5) -- (t);
\end{tikzpicture}

\end{center}

\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Properties as functions}
> Nat = {0, 1, 2, 3, ...}, Bool  =  {True, False}
> never : Nat -> Bool

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Nat|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  \draw (3, 1) circle (0.7);
  \node at (3, 2.0) {|Bool|};
  \node (t) at (3, 1.3) {|True|};
  \node (f) at (3, 0.7) {|False|};
  \draw[blue, ->] (0) -- (f);
  \draw[blue, ->] (1) -- (f);
  \draw[blue, ->] (2) -- (f);
  \draw[blue, ->] (3) -- (f);
  \draw[blue, ->] (4) -- (f);
  \draw[blue, ->] (5) -- (f);
\end{tikzpicture}

\end{center}

\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Bijections}

A function that is both onto and one-to-one:

> f : {n ;  n `elem` Nat, even n = True} -> Nat
> f n = n / 2

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Evens|};
  \node (z) at (0, 1.5) {|0|};
  \node (t) at (0, 1.2) {|2|};
  \node (f) at (0, 0.9) {|4|};
  \node (s) at (0, 0.6) {|6|};
  \node (e) at (0, 0.3) {|8|};
  \node (a) at (0, 0.0) {|...|};
  \draw (3, 0.8) circle (1);
  \node at (3, 2.0) {|Nat|};
  \node (0) at (3, 1.5) {|0|};
  \node (1) at (3, 1.2) {|1|};
  \node (2) at (3, 0.9) {|2|};
  \node (3) at (3, 0.6) {|3|};
  \node (4) at (3, 0.3) {|4|};
  \node (5) at (3, 0.0) {|...|};

  \draw[red, ->] (z) -- (0);
  \draw[red, ->] (t) -- (1);
  \draw[red, ->] (f) -- (2);
  \draw[red, ->] (s) -- (3);
  \draw[red, ->] (e) -- (4);
  \draw[red, ->] (a) -- (5);
\end{tikzpicture}

\end{center}

\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Bijections}

\vspace{-1cm}From extensional to intensional:
> warr
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node (E) at (0, 2.0) {|Evens|};
  \node (z) at (0, 1.5) {|0|};
  \node (t) at (0, 0.9) {|2|};
  \node (f) at (0, 0.3) {|4|};
  \node (a) at (0, 0.0) {|...|};
  \pause
  \draw (6, 0.8) circle (1);
  \node (e) at (7.5, 2.0) {|even : Nat -> Bool|};
  \node (0) at (6, 1.5) {|0|};
  \node (1) at (6, 1.2) {|1|};
  \node (2) at (6, 0.9) {|2|};
  \node (3) at (6, 0.6) {|3|};
  \node (4) at (6, 0.3) {|4|};
  \node (5) at (6, 0.0) {|...|};
  \draw (9, 1) circle (0.7);
%%  \node at (3, 2.0) {|Bool|};
  \node (t) at (9, 1.3) {|True|};
  \node (f) at (9, 0.7) {|False|};
  \draw[red, ->] (0) -- (t);
  \draw[blue, ->] (1) -- (f);
  \draw[red, ->] (2) -- (t);
  \draw[blue, ->] (3) -- (f);
  \draw[red, ->] (4) -- (t);
  \pause
  \draw[red, thick, ->] (E) -- (e);
\end{tikzpicture}

\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Bijections}

\vspace{-1cm}From intensional to extensional:
> warr
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node (e) at (1.5, 2.0) {|smaller3|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  \draw (3, 1) circle (0.7);
  \node at (3, 2.0) {};
  \node (t) at (3, 1.3) {|True|};
  \node (f) at (3, 0.7) {|False|};
  \draw[red, ->] (0) -- (t);
  \draw[red, ->] (1) -- (t);
  \draw[red, ->] (2) -- (t);
  \draw[blue, ->] (3) -- (f);
  \draw[blue, ->] (4) -- (f);
  \draw[blue, ->] (5) -- (f);
  \pause
  \draw (6, 1) circle (0.7);
  \node (E) at (6, 2.0) {|Smaller3|};
  \node (z) at (6, 1.3) {|0|};
  \node (o) at (6, 1.0) {|1|};
  \node (t) at (6, 0.7) {|2|};
  \pause
  \draw[red, thick, ->] (e) -- (E);
\end{tikzpicture}

\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Enumerating properties}

  Does there exist a one-to-one and unto function |f : Nat -> (Nat -> Bool)|?

  It's easy to find one-to-one functions:

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Nat|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  
  \node at (3, 2.0) {|Nat -> Bool|};
  \draw (3, 0.8) circle (1);
  \node (e0) at (3, 1.5) {|eq0|};
  \node (e1) at (3, 1.2) {|eq1|};
  \node (e2) at (3, 0.9) {|eq2|};
  \node (e3) at (3, 0.6) {|eq3|};
  \node (e4) at (3, 0.3) {|eq4|};
  \node (e5) at (3, 0.0) {|...|};
  \draw[red, ->] (0) -- (e0);
  \draw[red, ->] (1) -- (e1);
  \draw[red, ->] (2) -- (e2);
  \draw[red, ->] (3) -- (e3);
  \draw[red, ->] (4) -- (e4);
  \draw[red, ->] (5) -- (e5);
\end{tikzpicture}
  
\end{center}

\end{frame}
%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Enumerating properties}

  Does there exist a one-to-one and unto function |f : Nat -> (Nat -> Bool)|?

  But can we find one which is unto?

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Nat|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  
  \node at (3, 2.0) {|Nat -> Bool|};
  \draw (3, 0.8) circle (1);
  \node (e0) at (3, 1.5) {|even|};
  \node (e1) at (3, 1.2) {|eq2|};
  \node (e2) at (3, 0.9) {|smaller3|};
  \node (e3) at (3, 0.6) {|prime|};
  \node (e4) at (3, 0.3) {|always|};
  \node (e5) at (3, 0.0) {|...|};
  \draw[red, ->] (0) -- (e0);
  \draw[red, ->] (1) -- (e1);
  \draw[red, ->] (2) -- (e2);
  \draw[red, ->] (3) -- (e3);
  \draw[red, ->] (4) -- (e4);
  \draw[red, ->] (5) -- (e5);
\end{tikzpicture}
  
\end{center}

\end{frame}
%% -------------------------------------------------------------------


\begin{frame}
  \frametitle{Enumerating properties}

Suppose we have |f : Nat -> (Nat -> Bool)| unto.

\begin{columns}
  
  \begin{column}{0.6\textwidth}
    
    \begin{center}
      %%\vspace{0cm}\hspace{3cm}
      \begin{tikzpicture}[yscale=2]
        \draw (0, 0.8) circle (1);
        \node at (0, 2.0) {|Nat|};
        \node (0) at (0, 1.5) {|0|};
        \node (1) at (0, 1.2) {|1|};
        \node (2) at (0, 0.9) {|2|};
        \node (3) at (0, 0.6) {|3|};
        \node (4) at (0, 0.3) {|4|};
        \node (5) at (0, 0.0) {|...|};
        
        \node at (3, 2.0) {|Nat -> Bool|};
        \draw (3, 0.8) circle (1);
        \node (e0) at (3, 1.5) {|even|};
        \node (e1) at (3, 1.2) {|eq2|};
        \node (e2) at (3, 0.9) {|smaller3|};
        \node (e3) at (3, 0.6) {|prime|};
        \node (e4) at (3, 0.3) {|always|};
        \node (e5) at (3, 0.0) {|...|};
        \draw[red, ->] (0) -- (e0);
        \draw[red, ->] (1) -- (e1);
        \draw[red, ->] (2) -- (e2);
        \draw[red, ->] (3) -- (e3);
        \draw[red, ->] (4) -- (e4);
        \draw[red, ->] (5) -- (e5);
      \end{tikzpicture}
      
    \end{center}
  \end{column}

  \begin{column}{0.4\textwidth}
    \pause
    Example:

> f 0  =  even
> f 1  =  eq2
> f 2  =  smaller3
> f 3  =  prime
> f 4  =  always

  \end{column}
\end{columns}
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Enumerating properties}

Suppose we have |f : Nat -> (Nat -> Bool)| unto.

\begin{columns}
  
  \begin{column}{0.6\textwidth}
    
    \begin{center}
      %%\vspace{0cm}\hspace{3cm}
      \begin{tikzpicture}[yscale=2]
        \draw (0, 0.8) circle (1);
        \node at (0, 2.0) {|Nat|};
        \node (0) at (0, 1.5) {|0|};
        \node (1) at (0, 1.2) {|1|};
        \node (2) at (0, 0.9) {|2|};
        \node (3) at (0, 0.6) {|3|};
        \node (4) at (0, 0.3) {|4|};
        \node (5) at (0, 0.0) {|...|};
        
        \node at (3, 2.0) {|Nat -> Bool|};
        \draw (3, 0.8) circle (1);
        \node (e0) at (3, 1.5) {|even|};
        \node (e1) at (3, 1.2) {|eq2|};
        \node (e2) at (3, 0.9) {|smaller3|};
        \node (e3) at (3, 0.6) {|prime|};
        \node (e4) at (3, 0.3) {|always|};
        \node (e5) at (3, 0.0) {|...|};
        \draw[red, ->] (0) -- (e0);
        \draw[red, ->] (1) -- (e1);
        \draw[red, ->] (2) -- (e2);
        \draw[red, ->] (3) -- (e3);
        \draw[red, ->] (4) -- (e4);
        \draw[red, ->] (5) -- (e5);
      \end{tikzpicture}
      
    \end{center}
  \end{column}

  \begin{column}{0.4\textwidth}
> C    :  Nat -> Bool
> C n  =  nnot ((f n) n)
\pause
    Example:

\hspace{-0.8cm}|C 0  =  nnot (even 0)      =  False|\pause
    
\hspace{-0.8cm}|C 1  =  nnot (eq2 1)       =  True|\pause

\hspace{-0.8cm}|C 2  =  nnot (smaller3 2)  =  False|\pause

\hspace{-0.8cm}|C 3  =  nnot (prime 3)     =  False|\pause

\hspace{-0.8cm}|C 4  =  nnot (always 4)    =  False|
  \end{column}
\end{columns}
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Enumerating properties}

Suppose we have |f : Nat -> (Nat -> Bool)| unto.

\begin{columns}
  
  \begin{column}{0.6\textwidth}
    
    \begin{center}
      %%\vspace{0cm}\hspace{3cm}
      \begin{tikzpicture}[yscale=2]
        \draw (0, 0.8) circle (1);
        \node at (0, 2.0) {|Nat|};
        \node (0) at (0, 1.5) {|0|};
        \node (1) at (0, 1.2) {|1|};
        \node (2) at (0, 0.9) {|2|};
        \node (3) at (0, 0.6) {|3|};
        \node (4) at (0, 0.3) {|4|};
        \node (5) at (0, 0.0) {|...|};
        
        \node at (3, 2.0) {|Nat -> Bool|};
        \draw (3, 0.8) circle (1);
        \node (e0) at (3, 1.5) {|even|};
        \node (e1) at (3, 1.2) {|eq2|};
        \node (e2) at (3, 0.9) {|smaller3|};
        \node (e3) at (3, 0.6) {|prime|};
        \node (e4) at (3, 0.3) {|always|};
        \node (e5) at (3, 0.0) {|...|};
        \draw[red, ->] (0) -- (e0);
        \draw[red, ->] (1) -- (e1);
        \draw[red, ->] (2) -- (e2);
        \draw[red, ->] (3) -- (e3);
        \draw[red, ->] (4) -- (e4);
        \draw[red, ->] (5) -- (e5);
      \end{tikzpicture}
      
    \end{center}
  \end{column}

  \begin{column}{0.4\textwidth}
    \pause
> C    :  Nat -> Bool
> C n  =  nnot ((f n) n)
\pause
Find |N| such that |f N = C|.\pause

\def\commentbegin{\quad\{\ }
\def\commentend{\}}
\newcommand{\gap}{\pause\vspace{-1cm}}

\hspace{1.1cm}|C N|
\pause\vspace{-0.2cm}
\begin{spec}
= {- Definition |C| -}

  nnot ((f N) N)
\end{spec}
\gap
\begin{spec}
= {- |f N = C| -}

  nnot (C N)
\end{spec}\pause
(G. Cantor, 1845-1918)
\vfill
  \end{column}
\end{columns}
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
\frametitle{Consequences}
\vfill
\begin{itemize}
\item There are ``more'' properties of natural numbers than there are natural numbers.
  \vfill
\item There are ``more'' properties of a set than there are elements of that set (e.g., properties of properties of natural numbers).
  \vfill
\item There exist uncomputable functions!
\end{itemize}
\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Programs}

  A \emph{computable} function is a \emph{program}.
  
  Programs are stored as strings of ones and zeros, i.e., as natural numbers in binary representation.

  So there cannot be ``more'' programs than natural numbers.

  But |eq0|, |eq1|, |eq2|, \ldots are programs, so we cannot have ``more'' natural numbers than programs:

\begin{center}
%%\vspace{0cm}\hspace{3cm}
\begin{tikzpicture}[yscale=2]
  \draw (0, 0.8) circle (1);
  \node at (0, 2.0) {|Nat|};
  \node (0) at (0, 1.5) {|0|};
  \node (1) at (0, 1.2) {|1|};
  \node (2) at (0, 0.9) {|2|};
  \node (3) at (0, 0.6) {|3|};
  \node (4) at (0, 0.3) {|4|};
  \node (5) at (0, 0.0) {|...|};
  
  \node at (3, 2.0) {|Nat -> Bool|};
  \draw (3, 0.8) circle (1);
  \node (e0) at (3, 1.5) {|eq0|};
  \node (e1) at (3, 1.2) {|eq1|};
  \node (e2) at (3, 0.9) {|eq2|};
  \node (e3) at (3, 0.6) {|eq3|};
  \node (e4) at (3, 0.3) {|eq4|};
  \node (e5) at (3, 0.0) {|...|};
  \draw[red, ->] (0) -- (e0);
  \draw[red, ->] (1) -- (e1);
  \draw[red, ->] (2) -- (e2);
  \draw[red, ->] (3) -- (e3);
  \draw[red, ->] (4) -- (e4);
  \draw[red, ->] (5) -- (e5);
\end{tikzpicture}
  
\end{center}
  
  
\end{frame}


%% -------------------------------------------------------------------

\begin{frame}
\frametitle{Constructivism}
\vfill
There are ``more'' properties of |Nat| than elements of |Nat|, but only as many
programs as elements of  |Nat|.
\vfill
Therefore, there exists non-computable properties, and therefore non-computable functions.
\vfill
Constructivists reject non-computable functions.
\vfill
\end{frame}


%% -------------------------------------------------------------------

\begin{frame}
\frametitle{Constructivism}
\vfill
Constructivists reject non-computable functions.
\vfill
Therefore, there are as many properties of natural numbers as there are natural numbers.
\vfill
And, in fact, there are as many functions as there are natural numbers (as many properties of properties etc.).
\vfill
The constructive universe is very small!
\vfill\pause
\textbf{Or is it?}
\vfill
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
  \frametitle{Enumerating \textbf{constructive} properties}

Suppose we have \tt{f : Nat -> (Nat -> Bool)} unto.

\begin{columns}
  
  \begin{column}{0.6\textwidth}
    
    \begin{center}
      %%\vspace{0cm}\hspace{3cm}
      \begin{tikzpicture}[yscale=2]
        \draw (0, 0.8) circle (1);
        \node at (0, 2.0) {\tt{Nat}};
        \node (0) at (0, 1.5) {\tt{0}};
        \node (1) at (0, 1.2) {\tt{1}};
        \node (2) at (0, 0.9) {\tt{2}};
        \node (3) at (0, 0.6) {\tt{3}};
        \node (4) at (0, 0.3) {\tt{4}};
        \node (5) at (0, 0.0) {\tt{...}};
        
        \node at (3, 2.0) {\tt{Nat -> Bool}};
        \draw (3, 0.8) circle (1);
        \node (e0) at (3, 1.5) {\tt{even}};
        \node (e1) at (3, 1.2) {\tt{eq2}};
        \node (e2) at (3, 0.9) {\tt{smaller3}};
        \node (e3) at (3, 0.6) {\tt{prime}};
        \node (e4) at (3, 0.3) {\tt{always}};
        \node (e5) at (3, 0.0) {\tt{...}};
        \draw[red, ->] (0) -- (e0);
        \draw[red, ->] (1) -- (e1);
        \draw[red, ->] (2) -- (e2);
        \draw[red, ->] (3) -- (e3);
        \draw[red, ->] (4) -- (e4);
        \draw[red, ->] (5) -- (e5);
      \end{tikzpicture}
      
    \end{center}
  \end{column}

  \begin{column}{0.4\textwidth}
    \pause
    
    \tt{C    :  Nat -> Bool}
    
    \tt{C n  =  not ((f n) n)}
    
    \pause
    \vspace{0.5cm}
Find \tt{N} such that

\tt{f N = C}.\pause

\vspace{0.5cm}

\hspace{1.1cm}\tt{C N}

= \{ Definition \tt{C} \}

\hspace{1.1cm}\tt{not ((f N) N)}

= \{ \tt{f N = C} \}

\hspace{1.1cm}\tt{not (C N)}

\vspace{1cm}
  (G. Cantor, 1845-1918)

  \end{column}
\end{columns}
\end{frame}

%% -------------------------------------------------------------------

\begin{frame}
\frametitle{Conclusions}
\vfill
The function that associates |Nat| to computable properties is not computable.
\pause\vfill
The classical mathematician uses an ``illicit'' function to prove there are as
many |Nat| as programs.
\pause\vfill
Consequence: there is no function that can distinguish ``good'' programs from ``bad'' programs!
\vfill
\end{frame}

%% -------------------------------------------------------------------

\end{document}


