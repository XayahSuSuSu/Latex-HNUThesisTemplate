\LoadClass[UTF8, openany, a4paper, oneside, zihao=-4]{ctexbook}

% 目录章节格式（阿拉伯数字）
\ctexset{
    chapter={
        name={,},
        number={\arabic{chapter}}
    }}

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
\fancyhead[C]{
    \sizeFivel \fontSimsun 湖南大学本科生毕业论文（设计）
    \vspace{4pt}
}
\fancyhead[L]{}
\fancyhead[R]{}

% 页码：五号宋体
\fancyfoot[C]{
    \fontTimesNewRoman\fontSimsun\sizeFive \thepage
}

\renewcommand\frontmatter{
    \topmargin -10mm
    \headsep 12mm
    \pagenumbering{Roman}
}

% 中文摘要预定义格式
\newenvironment{abstractCN}{
    \newpage
    \phantomsection\addcontentsline{toc}{chapter}{摘~~要}
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
    \phantomsection\addcontentsline{toc}{chapter}{A\hspace{0.1em}b\hspace{0.1em}s\hspace{0.1em}t\hspace{0.1em}r\hspace{0.1em}a\hspace{0.1em}c\hspace{0.1em}t}
    \begin{center}
        \fontTimesNewRomanBold\sizeThreel[20]{
            \thesisTitleENG
        }

        \vspace{1.5cm}

        \fontTimesNewRomanBold\sizeThree{
            Abstract
        }
    \end{center}

    \vspace{0.5cm}
    }{}

% 英文关键词预定义格式
\newcommand\keywordsENG{
    \vspace{0.75cm}
    \raggedright\fontTimesNewRomanBold\sizeFour Keywords: \fontTimesNewRomanBold\sizeFourl
}

\RequirePackage{titlesec}
% Chapter格式
\titleformat{\chapter}{\fontTimesNewRomanBold\fontSimhei\sizeThree}{\thechapter}{1em}{}
\titlespacing{\chapter}{0pt}{0pt}{4pt}
% Section格式
\titleformat{\section}{\fontTimesNewRoman\fontSimhei\sizeFourl}{\thesection}{1em}{}
\titlespacing{\section}{0pt}{21pt}{4pt}
% Subsection格式
\titleformat{\subsection}{\fontTimesNewRoman\fontSimhei\sizeFourl}{\thesubsection}{1em}{}
\titlespacing{\subsection}{0pt}{21pt}{4pt}

% Subsubsection格式
\titleformat{\subsubsection}{\fontTimesNewRoman\fontSimhei\sizeFourl}{\thesubsubsection}{1em}{}
\titlespacing{\subsubsection}{0pt}{21pt}{4pt}

% 致谢预定义格式
\newenvironment{newThanks}{
    \clearpage
    \phantomsection\addcontentsline{toc}{chapter}{致~谢}
    \begin{center}
        \fontSimhei\sizeThree 致~谢
    \end{center}


    }{}

% 插图&表格格式
\RequirePackage{caption}
\DeclareCaptionFont{figureFont}{\fontSimsunBold\fontTimesNewRomanBold\sizeFive}
\DeclareCaptionLabelFormat{figureFontFormat}{#1 #2}
\captionsetup{
    font=figureFont,
    labelfont=figureFont,
    labelformat=figureFontFormat,
    labelsep=none,
    aboveskip=6pt,
}
