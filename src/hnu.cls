\LoadClass[UTF8, openany, a4paper, oneside, zihao=-4]{ctexbook}

% 上边距：30mm；下边距：25mm；左边距：30mm；右边距：20mm
\RequirePackage{geometry}
\geometry{
    top=30mm,
    bottom=25mm,
    left=30mm,
    right=20mm,
}

% 行间距为1.5倍行距,
\renewcommand{\baselinestretch}{1.6}

% 默认中文字体：宋体, 英文字体：Times New Roman
\setmainfont[Path=fonts/]{mTimesNewRoman.ttf}
\setCJKmainfont[Path=fonts/]{mSimsun.ttc}

% 页眉预定义格式
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

% 中文摘要预定义格式
\newenvironment{abstractCN}{
    \newpage
    \begin{center}
        \fontSimhei\sizeThreel[20]{
            \thesisTitle


            \vspace{1.5cm}
        }

        \fontSimhei\sizeThree{
                {摘~~~~~~~~要}
        }
    \end{center}

    \vspace{0.5cm}
    }{}

% 中文关键词预定义格式
\newcommand\keywordsCN{
    \vspace{0.75cm}
    \raggedright\fontSimhei\sizeFour 关键词：\fontSimhei\sizeFourl
}

% 英文摘要预定义格式
\newenvironment{abstractENG}{
    \newpage
    \begin{center}
        \fontTimesNewRomanBold\sizeThreel[20]{
            \thesisTitleENG
        }

        \vspace{1.5cm}

        \fontTimesNewRomanBold\sizeThree{
                {Abstract}
        }
    \end{center}

    \vspace{0.5cm}
    }{}

% 英文关键词预定义格式
\newcommand\keywordsENG{
    \vspace{0.75cm}
    \raggedright\fontTimesNewRomanBold\sizeFour Keywords: \fontTimesNewRomanBold\sizeFourl
}
