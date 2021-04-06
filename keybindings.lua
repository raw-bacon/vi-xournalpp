-- require "modes"
require "api"

ALL_MODES = {
  "tool",
  "color",
  "shape",
  "linestyle",
  "page",
  "file",
  "navigation"
}
--------------------
-- KEYBINDINGS:   -- 
--------------------
keybindings = {
  -- Tools
  pen = {
    description = "Pen",
    buttons     = {"w"},
    modes       = {"tool"},
    call        = function() clickPen() ; cleanShape() end
  },
  eraser = {
    description = "Eraser",
    buttons     = {"e"},
    modes       = {"tool"},
    call        = function() clickEraser() ; cleanShape() end
  },
  highlighter = {
    description = "Highlighter",
    buttons     = {"f"},
    modes       = {"tool"},
    call        = function() clickHighlighter() ; cleanShape() end
  },
  selection = {
    description = "Selection",
    buttons     = {"s", "v"},
    modes       = {"tool"},
    call        = clickSelectRegion
  },
  tex = {
    description = "Tex",
    buttons     = {"i"},
    modes       = {"tool"},
    call        = clickTex
  },
  delete = {
    description = "Delete",
    buttons     = {"x"},
    modes       = {"tool"},
    call        = clickDelete
  },

  -- History
  undo = {
    description = "Undo",
    buttons     = {"d"},
    modes       = {"tool"},
    call        = clickUndo,
  },
  redo = {
    description = "Redo",
    buttons     = {"r"},
    modes       = {"tool"},
    call        = clickRedo,
  },

  -- Mode Selection
  tool = {
    description = "Tool mode",
    buttons     = {"t"},
    modes       = ALL_MODES,
    call        = function() currentMode = "tool" end
  },
  color = {
    description = "Color mode",
    buttons     = {"c"},
    modes       = {"tool"},
    call        = function() currentMode = "color" end
  },
  shape = {
    description = "Shape mode",
    buttons     = {"a"},
    modes       = {"tool"},
    call        = function() currentMode = "shape" end
  },
  linestyle = {
    description = "Linestyle mode",
    buttons     = {"q"},
    modes       = {"tool"},
    call        = function() currentMode = "linestyle" end
  },
  page = {
    description = "Page mode",
    buttons     = {"b"},
    modes       = {"tool"},
    call        = function() currentMode = "page" end
  },
  navigation = {
    description = "Navigation mode",
    buttons     = {"g"},
    modes       = {"tool"},
    call        = function() currentMode = "navigation" end
  },
  file = {
    description = "File mode",
    buttons     = {"y"},
    modes       = {"tool"},
    call        = function() currentMode = "file" end
  },

  -- Thickness
  veryFine = {
    description = "Very Fine",
    buttons     = {"1"},
    modes       = {"tool"},
    call        = clickVeryFine,
  },
  fine = {
    description = "Fine",
    buttons     = {"2"},
    modes       = {"tool"},
    call        = clickFine,
  },
  medium = {
    description = "Medium",
    buttons     = {"3"},
    modes       = {"tool"},
    call        = clickMedium,
  },
  thick = {
    description = "Thick",
    buttons     = {"4"},
    modes       = {"tool"},
    call        = clickThick,
  },
  veryThick = {
    description = "Very thick",
    buttons     = {"5"},
    modes       = {"tool"},
    call        = clickVeryThick,
  },
  -- Colors
  black = {
    description = "Black",
    buttons     = {"x"},
    modes       = {"color"},
    call        = function() changeToolColor(blackColor) end
  },
  white = {
    description = "White",
    buttons     = {"w"},
    modes       = {"color"},
    call        = function() changeToolColor(whiteColor) end
  },
  pink = {
    description = "Pink",
    buttons     = {"q"},
    modes       = {"color"},
    call        = function() changeToolColor(pinkColor) end
  },
  red = {
    description = "Red",
    buttons     = {"r"},
    modes       = {"color"},
    call        = function() changeToolColor(redColor) end
  },
  orange = {
    description = "Orange",
    buttons     = {"o"},
    modes       = {"color"},
    call        = function() changeToolColor(orangeColor) end
  },
  yellow = {
    description = "Yellow",
    buttons     = {"y"},
    modes       = {"color"},
    call        = function() changeToolColor(yellowColor) end
  },
  green = {
    description = "Green",
    buttons     = {"g"},
    modes       = {"color"},
    call        = function() changeToolColor(greenColor) end
  },
  cyan = {
    description = "Cyan",
    buttons     = {"c"},
    modes       = {"color"},
    call        = function() changeToolColor(cyanColor) end
  },
  blue = {
    description = "Blue",
    buttons     = {"b"},
    modes       = {"color"},
    call        = function() changeToolColor(blueColor) end
  },
  purple = {
    description = "Purple",
    buttons     = {"p"},
    modes       = {"color"},
    call        = function() changeToolColor(purpleColor) end
  },

  -- Shapes
  ruler = {
    description = "Ruler",
    buttons     = {"s"},
    modes       = {"shape"},
    call        = clickRuler
  },
  arrow = {
    description = "Arrow",
    buttons     = {"a"},
    modes       = {"shape"},
    call        = clickArrow
  },
  rectangle = {
    description = "Rectangle",
    buttons     = {"r"},
    modes       = {"shape"},
    call        = clickRectangle
  },
  ellipse = {
    description = "Ellipse",
    buttons     = {"e"},
    modes       = {"shape"},
    call        = clickEllipse
  },
  spline = {
    description = "Spline",
    buttons     = {"b"},
    modes       = {"shape"},
    call        = clickSpline
  },
  -- Linestyles
  plain = {
    description = "Plain",
    buttons     = {"a"},
    modes       = {"linestyle"},
    call        = clickPlain
  },
  dashed = {
    description = "Dashed",
    buttons     = {"s"},
    modes       = {"linestyle"},
    call        = clickDashed
  },
  dotted = {
    description = "Dotted",
    buttons     = {"d"},
    modes       = {"linestyle"},
    call        = clickDotted
  },
  dashDotted = {
    description = "DashDotted",
    buttons     = {"f"},
    modes       = {"linestyle"},
    call        = clickDashDotted
  },

  -- Page
  --[[
  copyPage = {
    description = "copyPage",
    buttons     = {"c"},
    modes       = {"page"},
    call        = clickCopyPage,
  },
  deletePage = {
    description = "DeletePage",
    buttons     = {"d"},
    modes       = {"page"},
    call        = clickDeletePage
  },
  moveUp = {
    description = "MoveUp",
    buttons     = {"w"},
    modes       = {"page"},
    call        = clickMoveUp
  },
  moveDown = {
    description = "MoveDown",
    buttons     = {"s"},
    modes       = {"page"},
    call        = clickMoveDown
  },
  --]]
  newBefore = {
    description = "NewBefore",
    buttons     = {"<Shift>a"},
    modes       = {"page"},
    call        = clickNewBefore
  },
  newAfter = {
    description = "NewAfter",
    buttons     = {"a"},
    modes       = {"page"},
    call        = clickNewAfter
  },

  -- Navigation
  goToLastPage = {
    description = "Go to last page",
    buttons     = {"<Shift>G"},
    modes       = {"navigation"},
    call        = clickGoToLastPage
  },
  goToFirstPage = {
    description = "Go to first page",
    buttons     = {"g"},
    modes       = {"navigation"},
    call        = clickGoToFirstPage
  },
  goToTop = {
    description = "Go to top",
    buttons     = {"b"},
    modes       = {"navigation"},
    call        = clickGoToTop
  },
  goToBottom = {
    description = "Go to bottom",
    buttons     = {"<Shift>b"},
    modes       = {"navigation"},
    call        = clickGoToBottom
  },
  scrollPageDown = {
    description = "Scroll page down",
    buttons     = {"s"},
    modes       = {"navigation"},
    call        = clickScrollPageDown
  },
  scrollPageUp = {
    description = "Scroll page up",
    buttons     = {"w"},
    modes       = {"navigation"},
    call        = clickScrollPageUp
  },
  -- Files
  annotatePDF = {
    description = "Annotate PDF",
    buttons     = {"a"},
    modes       = {"file"},
    call        = clickAnnotatePDF
  },
  exportAsPDF = {
    description = "Export as PDF",
    buttons     = {"e"},
    modes       = {"file"},
    call        = clickExportAsPDF
  },
}

-- helper functions
function cleanShape()
  clickRuler(false)
  clickArrow(false)
  clickRectangle(false)
  clickEllipse(false)
  clickSpline(false)
end
