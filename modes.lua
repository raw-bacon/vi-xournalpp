require "api"

function handle(key)
  if currentMode == "tool" then
    toolModeHandle(key)
  elseif currentMode == "shape" then
    shapeModeHandle(key)
  elseif currentMode == "linestyle" then
    linestyleModeHandle(key)
  elseif currentMode == "page" then
    pageModeHandle(key)
  elseif currentMode == "file" then
    fileModeHandle(key)
  elseif currentMode == "navigation" then
    navigationModeHandle(key)
  end
end

function toolModeHandle(key)
  -- modes
  if key == shape then
    currentMode = "shape"
    print("Entered shape mode")
  elseif key == linestyle then
    currentMode = "linestyle"
    print("Entered linestyle mode")
  elseif key == page then
    currentMode = "page"
    print("Entered page mode")
  elseif key == file then
    currentMode = "file"
    print("Entered file mode")
  elseif key == navigation then
    currentMode = "navigation"
    print("Entered navigation mode")
  -- tools
  elseif key == pen then
    clickPen()
    cleanShape()
  elseif key == eraser then
    clickEraser()
  elseif key == highlighter then
    clickHighlighter()
  elseif key == selection then
    clickSelectRegion()
  -- thickness
  elseif key == veryFine then
    clickVeryFine()
  elseif key == fine then
    clickFine()
  elseif key == medium then
    clickMedium()
  elseif key == thick then
    clickThick()
  elseif key == veryThick then
    clickVeryThick()
  -- history
  elseif key == undo then
    clickUndo()
  elseif key == redo then
    clickRedo()
  end
end

function shapeModeHandle(key)
  if key == ruler then
    clickRuler(true)
  elseif key == arrow then
    clickArrow(true)
  elseif key == rectangle then
    clickRectangle()
  elseif key == ellipse then
    clickEllipse()
  elseif key == spline then
    clickSpline()
  end
end

function linestyleModeHandle(key)
  if key == plain then
    clickPlain()
  elseif key == dashed then
    clickDashed()
  elseif key == dotted then
    clickDotted()
  elseif key == dashDotted then
    clickDashDotted()
  end
end

function pageModeHandle(key)
  if key == copyPage then
    clickCopyPage()
  elseif key == deletePage then
    clickDeletePage()
  elseif key == moveUp then
    clickMoveUp()
  elseif key == moveDown then
    clickMoveDown()
  elseif key == newBefore then
    clickNewBefore()
  elseif key == newAfter then
    clickNewAfter()
  end
  currentMode = "tool"
end

function navigationModeHandle(key)
  if key == goToLastPage then
    clickGoToLastPage()
  elseif key == goToFirstPage then
    clickGoToFirstPage()
  elseif key == goToBottom then
    clickGoToBottom()
  elseif key == goToTop then
    clickGoToTop()
  elseif key == scrollPageDown then
    clickScrollPageDown()
  elseif key == scrollPageUp then
    clickScrollPageUp()
  end
end


function cleanShape()
  clickRuler(false)
  clickArrow(false)
  clickRectangle(false)
  clickEllipse(false)
  clickSpline(false)
end
