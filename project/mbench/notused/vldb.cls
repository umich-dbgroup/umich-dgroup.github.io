\LoadClassWithOptions{article}
% VLDB VARIANT OF PROC STANDARD DOCUMENT STYLE -- Released 26 February 1992
%    for LaTeX version 2.09 will work for LaTeX 2e as well
% Copyright (C) 1991,1992 by Leslie Lamport
% Modifications for 1993 VLDB specs by Tony Hosking
% Modifications for 1996 VLDB specs by vijay@ncst.ernet.in
% Modifications for 1997 VLDB specs by jeusfeld@informatik.rwth-aachen.de
% Modifications for 1998 VLDB specs by agupta@cs.stanford.edu (ashish gupta)
% Modifications for 1999 VLDB specs by pj.barclay@dcs.napier.ac.uk (Peter J Barclay)
% Modifications for 2001 VLDB specs by parabosc@elet.polimi.it (Stefano Paraboschi)
%
% This is a style option for use with the article style to produce
% camera-ready VLDB conference proceedings.

\typeout{Document Style Option 'vldb'.}

% PREPARING A FOREIGN LANGUAGE VERSION:
%
% This document style is for documents prepared in the English language.
% To prepare a version for another language, various English words must
% be replaced.  All the English words that required replacement are
% indicated below, where we give the name of the command in which the
% words appear, and the entire line containing the word(s), with the
% actual words underlined.
%
% abstract environment
\@ifundefined{abstractname}%
  {\def\abstractname{Abstract}}{}
%                    ~~~~~~~~
%
% \page:
\@ifundefined{pagename}%
  {\def\pagename{Page}}{}
%                ~~~~
%
%

%  ****************************************
%  *            PAGE LAYOUT               *
%  ****************************************
%
% All margin dimensions measured from a point one inch from top and side
% of page.  Dimensions shrink by about 2 percent

% DRIVER MARGINS: change these to shift the complete page image as a whole
% on the page without modifying the layout

\voffset        0pt      % does not have to be -0.65in  since topmargin is -ve
\hoffset        0pt

% SIDE MARGINS:
   \oddsidemargin  -0.1in   %  Note that \oddsidemargin = \evensidemargin
   \evensidemargin -0.1in

% VERTICAL SPACING:
                         % Top of page:
\topmargin -55pt         %    Nominal distance from top of page to top
                         %    of box containing running head.
\headheight 12pt         %    Height of box containing running head.
\headsep 25pt            %    Space between running head and text.
% \topskip = 10pt        %    '\baselineskip' for first line of page.
                         % Bottom of page:
\footskip 60pt           %    Distance from baseline of box containing
                         %    foot to baseline of last line of text.


% DIMENSION OF TEXT:

\textheight 9.125in        % Height of text (including footnotes and
                         % figures, excluding running head and foot).
\textwidth 6.75in         % Width of text line.
                         % For two-column mode:
\columnsep 0.25in           %    Space between columns
\columnseprule 0pt       %    Width of rule between columns.
\renewcommand{\baselinestretch}{0.95}

% FLOATS: (a float is something like a figure or table)
%
%  FOR FLOATS ON A TEXT PAGE:
%
%    ONE-COLUMN MODE OR SINGLE-COLUMN FLOATS IN TWO-COLUMN MODE:
\floatsep 11pt plus 2pt minus 2pt        % Space between adjacent floats
                                         % moved to top or bottom of
                                         % text page.
\textfloatsep 8pt plus 2pt               % Space between main text and
                                         % floats at top or bottom of
                                         % page.
\intextsep 8pt plus 2pt                  % Space between in-text figures
                                         % and text.
%SP\@maxsep 20pt                            % The maximum of \floatsep,
                                         % \textfloatsep and \intextsep
                                         % (minus the stretch and
                                         % shrink).
%    TWO-COLUMN FLOATS IN TWO-COLUMN MODE:
\dblfloatsep 11pt plus 2pt minus 2pt     % Same as \floatsep for
                                         % double-column figures in
                                         % two-column mode.
\dbltextfloatsep 8pt plus 2pt            % \textfloatsep for
                                         % double-column  floats.
%SP\@dblmaxsep 20pt                         % The maximum of \dblfloatsep
                                         % and \dbltexfloatsep.



%    ****************************************
%    *            PAGE STYLES               *
%    ****************************************
%
%  Use \markright (or \markboth) to put an identification in the
%  lower left.  The page number is printed in the lower right.

%\def\@oddhead{}\def\@evenhead{}
%\def\@oddfoot{\rm\rightmark \hfil \pagename{} \thepage}
%\def\@evenfoot{\@oddfoot}

% The three lines above commented out by PJB on 25th May 1999 to remove page
% numbers from papers prepared by Latex. Line added below to set the pagestyle
% to empty.

\pagestyle{empty}

%    ****************************************
%    *               TITLE                  *
%    ****************************************
%

% This definition of \maketitle taken from article.sty, except
% it does not do a \thispagestyle{plain}.
% To avoid copyrightspace, do \def\copyrightspace{}

\def\institution#1{\gdef\@institution{#1}}

\def\maketitle{\par
 \begingroup
   \def\thefootnote{\fnsymbol{footnote}}%
   \def\@makefnmark{\hbox to\z@{$\m@th^{\@thefnmark}$\hss}}%
   \twocolumn[\@maketitle]%
   \@thanks\copyrightspace
 \endgroup
 \setcounter{footnote}{0}%
 \let\maketitle\relax
 \let\@maketitle\relax
 \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\gdef\@institution{}%
 \let\thanks\relax}

%\def\@maketitle{\vbox to 2.25in{\hsize\textwidth
\def\@maketitle{\vbox{\hsize\textwidth
  \linewidth\hsize \vfil \centering
  \vspace*{0.25in}
  {\LARGE\bf \@title \par}%    % Title set in \LARGE size.
  \vskip 32pt                % Vertical space after title.
  {\large \begin{tabular}[t]{c}\@author \end{tabular}\par}%
  \vskip 1em                % Vertical space after authors.
  {\begin{tabular}[t]{c}\@institution\end{tabular} \par}
  \vskip 32pt}}


% The \copyrightspace command is used to produce the VLDB copyright in the
% first column where a copyright notice belongs.  Note that it
% should appear after any \footnote commands that produce footnotes
% for the first column.

\def\copyrightspace{
\long\def\@makefntext##1{\noindent ##1}
\footnotesep 1em
\edef\baselinestretch{1.0}
\footnotetext[0]{\em Permission to copy without fee all or part of this
material is granted provided that the copies are not made or distributed for
direct commercial advantage, the VLDB copyright notice and the title of the
publication and its date appear, and notice is given that copying is by
permission of the Very Large Data Base Endowment.  To copy otherwise, or to
republish, requires a fee and/or special permission from the Endowment.}
\footnotetext[0]{\small\bf Proceedings of the 28th VLDB Conference,\\
Hong Kong, China, 2002}
}

% The abstract Environment

%\def\abstract{\vspace*{11pt}{\centering{\large\bf\abstractname}\par}
%old version; Modified on 01/01/29 by Stefano Paraboschi
\def\abstract{{\centering{\large\bf\abstractname}\par}
        \begin{list}{}{%
                \setlength{\rightmargin}{0.25in}
                \setlength{\leftmargin}{\rightmargin}}
                        \item[]}
\def\endabstract{\end{list}\normalsize}


% \@startsection {NAME}{LEVEL}{INDENT}{BEFORESKIP}{AFTERSKIP}{STYLE}
%            optional * [ALTHEADING]{HEADING}
%    Generic command to start a section.
%    NAME       : e.g., 'subsection'
%    LEVEL      : a number, denoting depth of section -- i.e.,
%                 section=1, subsection = 2, etc.  A section number will
%                 be printed if and only if LEVEL < or = the value of
%                 the secnumdepth counter.
%    INDENT     : Indentation of heading from left margin
%    BEFORESKIP : Absolute value = skip to leave above the heading.
%                 If negative, then paragraph indent of text following
%                 heading is suppressed.
%    AFTERSKIP  : if positive, then skip to leave below heading,
%                       else - skip to leave to right of run-in heading.
%    STYLE      : commands to set style
%  If '*' missing, then increments the counter.  If it is present, then
%  there should be no [ALTHEADING] argument.  A sectioning command
%  is normally defined to \@startsection + its first six arguments.

\def\section{\@startsection {section}{1}{\z@}{-11pt plus-1ex minus-.2ex}
    {5.5pt plus.2ex}{\large\bf}}
\def\subsection{\@startsection{subsection}{2}{\z@}{-11pt plus-1ex minus-.2ex}
    {5.5pt plus.2ex}{\normalsize\bf}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-11pt plus-1ex minus-.2ex}
    {5.5pt plus.2ex}{\normalsize\bf}}
\def\paragraph{\@startsection{paragraph}{4}{\z@}{-11pt plus-1ex minus-.2ex}
    {5.5pt plus.2ex}{\normalsize\rm}}
\def\subparagraph{\@startsection
     {subparagraph}{4}{\parindent}{3.25ex plus1ex minus
     .2ex}{-1em}{\normalsize\bf}}



%    ****************************************
%    *           INITIALIZATION             *
%    ****************************************
%
% Default initializations

\twocolumn
\sloppy
\parindent 1pc
\leftmargini 2em
\leftmargin\leftmargini
\leftmarginv .5em
\leftmarginvi .5em
\flushbottom

\endinput


