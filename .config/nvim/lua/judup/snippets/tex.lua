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
  \documentclass{{{}}}

  \usepackage[french]{{babel}}
  \usepackage[utf8]{{inputenc}}
  \usepackage{{lmodern}}
  \usepackage[T1]{{fontenc}}
  \usepackage{{enumitem}}
  \usepackage[svgnames]{{xcolor}}
  \usepackage{{hyperref}}
  \usepackage{{wrapfig}}
  \usepackage{{caption}}

  % ==================================================
  %                   Configuration
  % ==================================================

  % Setting up the image path
  \graphicspath{{ {{./images/}} }}

  % Change color of reference 
  \hypersetup{{colorlinks=true, linkcolor=DarkViolet}}
  \captionsetup{{font=footnotesize, justification=centering}}

   % Change default typewrite font 
  \renewcommand\ttdefault{{fvm}}

  % Title, author
  \title{{{}}}
  \author{{{}}}
  %

  % ==================================================
  %                   Document
  % ==================================================
  \begin{{document}}
  \maketitle
  {}
  \end{{document}}
  ]], {
      i(1, "article"),
      i(2, "Title"),
      i(3, "Author"),
      i(0)
    })
  )
}
