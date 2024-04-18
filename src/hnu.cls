\LoadClass[UTF8, openany, a4paper, oneside, zihao=-4]{ctexbook}

% 上边距：30mm；下边距：25mm；左边距：30mm；右边距：20mm；行间距为1.5倍行距。
\RequirePackage{geometry}
\geometry{
    top=30mm,
    bottom=25mm,
    left=30mm,
    right=20mm,
}
\renewcommand{\baselinestretch}{1.6}
\setmainfont[Path=fonts/]{mTimesNewRoman.ttf}
\setCJKmainfont[Path=fonts/]{mSimsun.ttc}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand\headrule{
    \hrule height 1.2pt width\headwidth
    \vskip 0.6pt
    \hrule height 0.7pt width\headwidth
}
\fancyhead[C]{\sizeFivel \fontSimsun 湖南大学本科生毕业论文（设计）}

\renewcommand\frontmatter{
    \topmargin -10mm
    \headsep 12mm
    \pagenumbering{Roman}
}