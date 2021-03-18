require "modes"

function onToolKey()
  -- no condition. does not get handled
  currentMode = "tool"
  print("Entered tool mode")
end

function onColorKey()
  handle(color)
end

function onShapeKey()
  handle(shape)
end

function onLinestyleKey()
  handle(linestyle)
end

function onPageKey()
  handle(page)
end

function onFileKey()
  handle(file)
end


-- colors
function onBlackKey()
  handle(black)
end

function onWhiteKey()
  handle(white)
end

function onPinkKey()
  handle(pink)
end

function onRedKey()
  handle(red)
end

function onOrangeKey()
  handle(orange)
end

function onYellowKey()
  handle(yellow)
end

function onGreenKey()
  handle(green)
end

function onCyanKey()
  handle(cyan)
end

function onBlueKey()
  handle(blue)
end

function onPurpleKey()
  handle(purple)
end


-- tools
function onPenKey()
  handle(pen)
end

function onEraserKey()
  handle(eraser)
end

function onHighlighterKey()
  handle(highlighter)
end

function onSelectionKey()
  handle(selection)
end

function onTexKey()
  handle(tex)
end

function onDeleteKey()
  handle(delete)
end

-- shapes
function onRulerKey()
  handle(ruler)
end

function onArrowKey()
  handle(arrow)
end

function onRectangleKey()
  handle(rectangle)
end

function onEllipseKey()
  handle(ellipse)
end

function onSplineKey()
  handle(spline)
end

-- linestyles
function onPlainKey()
  handle(plain)
end

function onDashedKey()
  handle(dashed)
end

function onDottedKey()
  handle(dotted)
end

function onDashDottedKey()
  handle(dashDotted)
end

-- page
function onCopyPageKey()
  handle(copyPage)
end

function onDeletePageKey()
  handle(deletePage)
end

function onMoveUpKey()
  handle(moveUp)
end

function onMoveDownKey()
  handle(moveDown)
end

function onNewBeforeKey()
  handle(newBefore)
end

function onNewAfterKey()
  handle(newAfter)
end

function onGoToLastPageKey()
  handle(goToLastPage)
end

function onGoToFirstPageKey()
  handle(goToFirstPage)
end

function onGoToBottomKey()
  handle(goToBottom)
end

function onGoToTopKey()
  handle(goToTop)
end


-- history
function onUndoKey()
  handle(undo)
end

function onRedoKey()
  handle(redo)
end


-- thickness
function onVeryFineKey()
  handle(veryFine)
end

function onFineKey()
  handle(fine)
end

function onMediumKey()
  handle(medium)
end

function onThickKey()
  handle(thick)
end

function onVeryThickKey()
  handle(veryThick)
end

function onAnnotatePDFKey()
  handle(annotatePDF)
end

function onExportAsPDFKey()
  handle(exportAsPDF)
end
