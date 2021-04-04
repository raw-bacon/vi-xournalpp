-- line width
function clickVeryFine()
  app.uiAction({["action"] = "ACTION_SIZE_VERY_FINE"})
end

function clickFine()
  app.uiAction({["action"] = "ACTION_SIZE_FINE"})
end

function clickMedium()
  app.uiAction({["action"] = "ACTION_SIZE_MEDIUM"})
end

function clickThick()
  app.uiAction({["action"] = "ACTION_SIZE_THICK"})
end

function clickVeryThick()
  app.uiAction({["action"] = "ACTION_SIZE_VERY_THICK"})
end

-- tools
function clickPen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
end

function clickEraser()
  app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
end

function clickHighlighter()
  app.uiAction({["action"] = "ACTION_TOOL_HILIGHTER"})
end

function clickSelectRegion()
  app.uiAction({["action"] = "ACTION_TOOL_SELECT_REGION"})
end


-- shapes
function clickRuler(enabled)
  app.uiAction({["action"] = "ACTION_RULER", ["enabled"] = enabled})
end

function clickArrow(enabled)
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_ARROW", ["enabled"] = enabled})
end

function clickEllipse(enabled)
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_ELLIPSE", ["enabled"] = enabled})
end

function clickRectangle(enabled)
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_RECT", ["enabled"] = enabled})
end

function clickSpline(enabled)
    app.uiAction({["action"] = "ACTION_TOOL_DRAW_SPLINE", ["enabled"] = enabled})
end

function clickPlain()
  app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_PLAIN"})
end


-- linestyle
function clickDotted()
  app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_DOT"})
end

function clickDashed()
  app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_DASH"})
end

function clickDashDotted()
  app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_DASH_DOT"})
end


-- page
function clickCopyPage()
  app.sidebarAction("COPY")
end

function clickDeletePage()
  app.uiAction({["action"] = "ACTION_DELETE_PAGE"})
end

function clickMoveUp()
  app.sidebarAction("MOVE_UP")
end

function clickMoveDown()
  app.sidebarAction("MOVE_DOWN")
end

function clickNewBefore()
  app.sidebarAction("NEW_BEFORE")
end

function clickNewAfter()
  app.sidebarAction("NEW_AFTER")
end

-- navigation
function clickGoToFirstPage()
  app.scrollToPage(1)
end

function clickGoToTop()
  app.scrollToPage(1)
end

function goToPage(page)
  app.scrollToPage(page)
end

function goToPos(x, y)
  app.scrollToPos(x, y)
end

function clickScrollPageDown()
  app.scrollToPage(1, true)
end

function clickScrollPageUp()
  app.scrollToPage(-1, true)
end

function clickGoToBottom()
  app.scrollToPage(1000)
end


-- history
function clickUndo()
  app.uiAction({["action"] = "ACTION_UNDO"})
end

function clickRedo()
  app.uiAction({["action"] = "ACTION_REDO"})
end
