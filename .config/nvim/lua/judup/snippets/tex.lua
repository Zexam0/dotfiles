local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  s("xtest", {
    t("This is a test snippet for tex files")
  }),
  s({
    trig = "xteh",
    snippetType = "autosnippet",
    priority = 2000,
  }, {
    t("theLaTeX")
  }),
  s("templateRep", fmt([[
  % ==================================================
  %                   Packages
  % ==================================================
  \documentclass[a4paper]{{article}}

  \usepackage[french]{{babel}}
  \usepackage[utf8]{{inputenc}}
  \usepackage{{lmodern}}
  \usepackage[T1]{{fontenc}}
  \usepackage{{enumitem}}
  \usepackage[svgnames]{{xcolor}}
  \usepackage{{hyperref}}
  \usepackage{{wrapfig}}
  \usepackage{{caption}}
  \usepackage{{listings}}
  \usepackage{{graphicx}}
  \usepackage{{minted}}
  \usepackage{{environ}}
  \usepackage{{xparse}}

  % ==================================================
  %                   Configuration
  % ==================================================

  % Setting up the image path
  \graphicspath{{ {{./images/}} }}

  % Change color of reference
  \hypersetup{{colorlinks=true, linkcolor=DarkViolet}}
  \captionsetup{{font=footnotesize, justification=centering}}
  \definecolor{{monokai-bg}}{{RGB}}{{39,40,34}}
  \definecolor{{monokai-fg}}{{RGB}}{{248,248,242}}

   % Change default typewrite font
  \renewcommand\ttdefault{{fvm}}

  \NewDocumentEnvironment{{codeOutput}}{{O{{console}} O{{style=monokai}} m}}
  {{%
    \VerbatimEnvironment
    \begin{{listing}}[htp]
    \caption{{#3}}%
    \centering
    \begin{{minted}}[#2]{{#1}}}}
    {{\end{{minted}}\end{{listing}}
   }}

  \setminted{{
    style=monokai,
    bgcolor=monokai-bg,
    frame=single,
    fontsize=\scriptsize
  }}

  \AtBeginEnvironment{{minted}}{{\color{{monokai-fg}}}}

  % New command
  \newcommand{{\comptt}}[1]{{\texttt{{\scriptsize #1}}}}

  % Title, author
  \title{{\textbf{{\Huge {}}}}}
  \author{{\LARGE{{Dupuis Julien}}}}
  \date{{}}
  %

  % ==================================================
  %                   Document
  % ==================================================
  \begin{{document}}
  \maketitle
  {}
  \end{{document}}
  ]], {
    i(1, "Title"),
    i(0)
  })
  )
}
