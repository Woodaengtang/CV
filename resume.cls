\LoadClass[14pt]{extreport}

\usepackage{ifthen}
\usepackage[english]{babel}
\usepackage[utf8x]{inputenc}
\usepackage{geometry}
\usepackage{array}
\usepackage{enumitem}
\usepackage{hyperref}
\usepackage{xltabular}
\usepackage{graphicx}
\usepackage{outlines}
\usepackage{fontawesome5}
\usepackage[dvipsnames]{xcolor}
\usepackage{tikz}
\usepackage{newtxtext}

\setlist[itemize]{leftmargin=*}
% \setmainfont{DIN}
\linespread{1.15}
\geometry{a4paper,
    left={0.5in},
    top={0.4in}, 
    right={0.5in},
    bottom={0.4in}
}
% \newcommand\clink[1]{{\usefont{T1}{lmtt}{m}{n} #1 }}
\newcommand\clink[1]{{ #1 }}
\pagenumbering{gobble}
\newenvironment{csection}[2]{
    % \textbf{#1}
    {#1}
    \vspace{0.15cm} 
    \hrule 
    {#2}
}{}

\newenvironment{frcontent}[4]{
    {
        \textbf{#1} \leavevmode\newline
        {\footnotesize	
            \ifthenelse{\equal{#2}{}}{}{{#2 \leavevmode\newline}}
            \ifthenelse{\equal{#3}{}}{}{{#3 \leavevmode\newline}}
            \ifthenelse{\equal{#4}{}}{}{{\textit{#4}}}
        }
    }
}{}

% \skill{<skill name>}{<level 1-5>}
\newcommand{\skill}[2]{
    \makebox[24em][l]{#1}
    \begin{tikzpicture}[scale=0.4, baseline=0.1em]
        \fill[gray!30] (0,0) rectangle (5,0.6);
        \fill[black] (0,0) rectangle (#2,0.6);
    \end{tikzpicture}
}

% \documentclass[10pt,a4paper,showtrims]{memoir}
% \trimFrame  
% \settrimmedsize{210mm}{145mm}{*}
% \settrims{20mm}{34mm}