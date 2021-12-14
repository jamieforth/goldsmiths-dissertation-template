\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gsdiss}[2014/08/16 Example LaTeX class]

\LoadClass{report}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}

% Provides useful macros for custom cover page.
\RequirePackage{titling}

% Set margins.
\RequirePackage[a4paper,top=3cm,bottom=3cm,left=4cm,right=3cm]{geometry}

% Provides \includegraphics.
\RequirePackage{graphicx}

% Allow periods and spaces in graphics file names.
\RequirePackage{grffile}

% Date formatting.
\RequirePackage[useregional]{datetime2}
\DTMusemodule{english}{en-GB}
%\DTMlangsetup{showdayofmonth=false}

% Fancy header for cover page.
\RequirePackage{fancyhdr}

% Prettier tables.
\RequirePackage{booktabs}

% Increase line-spacing.
\RequirePackage{setspace}
\onehalfspacing

% Continuous footnote counting.
\RequirePackage{chngcntr}
\counterwithout{footnote}{chapter}

% Flexible captions.
\RequirePackage{caption}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Provides NewDocumentCommand.
\RequirePackage{xparse}

% --------------------------------------------------------------------
% Custom commands
% --------------------------------------------------------------------

\NewDocumentCommand{\supervisor}{m}{\newcommand{\thesupervisor}{#1}}
\NewDocumentCommand{\degree}{m}{\newcommand{\thedegree}{#1}}
