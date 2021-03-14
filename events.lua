require "modes"

function onToolKey()
  -- no condition. does not get handled
  currentMode = "tool"
  print("Entered tool mode")
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

function onGoToBottomKey()
  handle(goToBottom)
end

function onGoToTopKey()
  handle(goToTop)
end
