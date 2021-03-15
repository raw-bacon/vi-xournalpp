require "keybindings"
require "events"


function initUi()
  -- modes
  app.registerUi({["menu"] = "Enter tool mode",      ["callback"] = "onToolKey",      ["accelerator"] = tool}); 
  app.registerUi({["menu"] = "Enter color mode",     ["callback"] = "onColorKey",     ["accelerator"] = color});
  app.registerUi({["menu"] = "Enter shape mode",     ["callback"] = "onShapeKey",     ["accelerator"] = shape});
  app.registerUi({["menu"] = "Enter linestyle mode", ["callback"] = "onLinestyleKey", ["accelerator"] = linestyle});
  app.registerUi({["menu"] = "Enter page mode",      ["callback"] = "onPageKey",   ["accelerator"] = page});
  -- thickness
  app.registerUi({["menu"] = "Very fine",  ["callback"] = "onVeryFineKey",  ["accelerator"] = veryFine});
  app.registerUi({["menu"] = "Fine",       ["callback"] = "onFineKey",      ["accelerator"] = fine});
  app.registerUi({["menu"] = "Medium",     ["callback"] = "onMediumKey",    ["accelerator"] = medium});
  app.registerUi({["menu"] = "Thick",      ["callback"] = "onThickKey",     ["accelerator"] = thick});
  app.registerUi({["menu"] = "Very thick", ["callback"] = "onVeryThickKey", ["accelerator"] = veryThick});
  -- tool mode
  app.registerUi({["menu"] = "Select pen tool (tool mode)",         ["callback"] = "onPenKey", ["accelerator"] = pen});
  app.registerUi({["menu"] = "Select eraser tool (tool mode)",      ["callback"] = "onEraserKey", ["accelerator"] = eraser});
  app.registerUi({["menu"] = "Select highlighter tool (tool mode)", ["callback"] = "onHighlighterKey", ["accelerator"] = highlighter});
  app.registerUi({["menu"] = "Select select tool (tool mode)",      ["callback"] = "onSelectionKey", ["accelerator"] = selection});
  app.registerUi({["menu"] = "Select tex tool (tool mode)",         ["callback"] = "onTexKey", ["accelerator"] = tex});
  app.registerUi({["menu"] = "Undo (tool mode)",                    ["callback"] = "onUndoKey", ["accelerator"] = undo});
  app.registerUi({["menu"] = "Redo (tool mode)",                    ["callback"] = "onRedoKey", ["accelerator"] = redo});
  -- color mode
  app.registerUi({["menu"] = "black (color mode)",  ["callback"] = "onBlackKey",  ["accelerator"] = black});
  app.registerUi({["menu"] = "white (color mode)",  ["callback"] = "onWhiteKey",  ["accelerator"] = white});
  app.registerUi({["menu"] = "pink (color mode)",   ["callback"] = "onPinkKey",   ["accelerator"] = pink});
  app.registerUi({["menu"] = "red (color mode)",    ["callback"] = "onRedKey",    ["accelerator"] = red});
  app.registerUi({["menu"] = "orange (color mode)", ["callback"] = "onOrangeKey", ["accelerator"] = orange});
  app.registerUi({["menu"] = "yellow (color mode)", ["callback"] = "onYellowKey", ["accelerator"] = yellow});
  app.registerUi({["menu"] = "green (color mode)",  ["callback"] = "onGreenKey",  ["accelerator"] = green});
  app.registerUi({["menu"] = "cyan (color mode)",   ["callback"] = "onCyanKey",   ["accelerator"] = cyan});
  app.registerUi({["menu"] = "blue (color mode)",   ["callback"] = "onBlueKey",   ["accelerator"] = blue});
  app.registerUi({["menu"] = "purple (color mode)", ["callback"] = "onPurpleKey", ["accelerator"] = purple});
  -- shape mode
  app.registerUi({["menu"] = "Straight line (shape mode)", ["callback"] = "onRulerKey",     ["accelerator"] = ruler});
  app.registerUi({["menu"] = "Arrow (shape mode)",         ["callback"] = "onArrowKey",     ["accelerator"] = arrow});
  app.registerUi({["menu"] = "Rectangle (shape mode)",     ["callback"] = "onRectangleKey", ["accelerator"] = rectangle});
  app.registerUi({["menu"] = "Ellipse (shape mode)",       ["callback"] = "onEllipseKey",   ["accelerator"] = ellipse});
  app.registerUi({["menu"] = "Spline (shape mode)",        ["callback"] = "onSplineKey",    ["accelerator"] = spline});
  -- linestyle mode
  app.registerUi({["menu"] = "Plain (linestyle mode)",       ["callback"] = "onPlainKey",      ["accelerator"] = plain});
  app.registerUi({["menu"] = "Dashed (linestyle mode)",      ["callback"] = "onDashedKey",     ["accelerator"] = dashed});
  app.registerUi({["menu"] = "Dotted (linestyle mode)",      ["callback"] = "onDottedKey",     ["accelerator"] = dotted});
  app.registerUi({["menu"] = "Dash-dotted (linestyle mode)", ["callback"] = "onDashDottedKey", ["accelerator"] = dashDotted});
  -- page mode
  app.registerUi({["menu"] = "Copy page (page mode)",        ["callback"] = "onCopyKey",          ["accelerator"] = copyPage});
  app.registerUi({["menu"] = "Delete page (page mode)",      ["callback"] = "onDeleteKey",        ["accelerator"] = deletePage});
  app.registerUi({["menu"] = "Move up (page mode)",          ["callback"] = "onMoveUpKey",        ["accelerator"] = moveUp});
  app.registerUi({["menu"] = "Move down (page mode)",        ["callback"] = "onMoveDownKey",      ["accelerator"] = moveDown});
  app.registerUi({["menu"] = "New before (page mode)",       ["callback"] = "onNewBeforeKey",     ["accelerator"] = newBefore});
  app.registerUi({["menu"] = "New after (page mode)",        ["callback"] = "onNewAfterKey",      ["accelerator"] = newAfter});
  app.registerUi({["menu"] = "Go to last page (page mode)",  ["callback"] = "onGoToLastPageKey",  ["accelerator"] = goToLastPage});
  app.registerUi({["menu"] = "Go to first page (page mode)", ["callback"] = "onGoToFirstPageKey", ["accelerator"] = goToFirstPage});
  app.registerUi({["menu"] = "Go to top (page mode)",        ["callback"] = "onGoToTopKey",       ["accelerator"] = goToTop});
  app.registerUi({["menu"] = "Go to bottom (page mode)",     ["callback"] = "onGoToBottomKey",    ["accelerator"] = goToBottom});
end


currentMode = "tool"

