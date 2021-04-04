require "keybindings"
require "events"


function initUi()
  -- modes
  app.registerUi({["menu"] = "Enter tool mode",      ["callback"] = "onToolKey",      ["accelerator"] = tool}); 
  app.registerUi({["menu"] = "Enter shape mode",     ["callback"] = "onShapeKey",     ["accelerator"] = shape});
  app.registerUi({["menu"] = "Enter linestyle mode", ["callback"] = "onLinestyleKey", ["accelerator"] = linestyle});
  app.registerUi({["menu"] = "Enter page mode",      ["callback"] = "onPageKey",   ["accelerator"] = page});
  app.registerUi({["menu"] = "Enter page mode",      ["callback"] = "onPageKey",      ["accelerator"] = page});
  app.registerUi({["menu"] = "Enter file mode",      ["callback"] = "onFileKey",      ["accelerator"] = file});
  app.registerUi({["menu"] = "Enter navigation mode",["callback"] = "onNavigationKey",["accelerator"] = navigation});
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
  app.registerUi({["menu"] = "Undo (tool mode)",                    ["callback"] = "onUndoKey", ["accelerator"] = undo});
  app.registerUi({["menu"] = "Redo (tool mode)",                    ["callback"] = "onRedoKey", ["accelerator"] = redo});
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
  -- navigation mode
  app.registerUi({["menu"] = "Go to last page (navigation mode)",  ["callback"] = "onGoToLastPageKey",  ["accelerator"] = goToLastPage});
  app.registerUi({["menu"] = "Go to first page (navigation mode)", ["callback"] = "onGoToFirstPageKey", ["accelerator"] = goToFirstPage});
  app.registerUi({["menu"] = "Go to top (navigation mode)",        ["callback"] = "onGoToTopKey",       ["accelerator"] = goToTop});
  app.registerUi({["menu"] = "Go to bottom (navigation mode)",     ["callback"] = "onGoToBottomKey",    ["accelerator"] = goToBottom});
  app.registerUi({["menu"] = "Scroll Page Down (navigation mode)", ["callback"] = "onScrollPageDownKey",["accelerator"] = scrollPageDown});
  app.registerUi({["menu"] = "Scroll Page Up(navigation mode)",    ["callback"] = "onScrollPageUpKey",  ["accelerator"] = scrollPageUp});
  -- file mode
  app.registerUi({["menu"] = "Annotate PDF (file mode)",     ["callback"] = "onAnnotatePDFKey",   ["accelerator"] = annotatePDF});
  app.registerUi({["menu"] = "Export as PDF (file mode)",    ["callback"] = "onExportAsPDFKey",   ["accelerator"] = exportAsPDF});
end


-- the modes are "tool", "linestyle", and "shape"
currentMode = "tool"

