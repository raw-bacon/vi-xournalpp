require "api"
require "colors"

function handle(key)
  if currentMode == "tool" then
    toolModeHandle(key)
  elseif currentMode == "color" then
    colorModeHandle(key)
  elseif currentMode == "shape" then
    shapeModeHandle(key)
  elseif currentMode == "linestyle" then
    linestyleModeHandle(key)
  elseif currentMode == "page" then
    pageModeHandle(key)
  end
end

function toolModeHandle(key)
  -- modes
  if key == color then
    currentMode = "color"
    print("Entered color mode")
  elseif key == shape then
    currentMode = "shape"
    print("Entered shape mode")
  elseif key == linestyle then
    currentMode = "linestyle"
    print("Entered linestyle mode")
  elseif key == page then
    currentMode = "page"
    print("Entered page mode")
  -- tools
  elseif key == pen then
    clickPen()
    cleanShape()
  elseif key == eraser then
    clickEraser()
    cleanShape()
  elseif key == highlighter then
    clickHighlighter()
    cleanShape()
  elseif key == selection then
    clickSelectRegion()
  elseif key == tex then
    clickTex()
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

function colorModeHandle(key)
  if key == black then
    changeToolColor(blackColor)
  elseif key == white then
    changeToolColor(whiteColor)
  elseif key == red then
    changeToolColor(redColor)
  elseif key == orange then
    changeToolColor(orangeColor)
  elseif key == yellow then
    changeToolColor(yellowColor)
  elseif key == green then
    changeToolColor(greenColor)
  elseif key == cyan then
    changeToolColor(cyanColor)
  elseif key == blue then
    changeToolColor(blueColor)
  elseif key == pink then
    changeToolColor(pinkColor)
  elseif key == purple then
    changeToolColor(purpleColor)
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
  elseif key == goToLastPage then
    clickGoToLastPage()
  elseif key == goToFirstPage then
    clickGoToFirstPage()
  end
end


function cleanShape()
  clickRuler(false)
  clickArrow(false)
  clickRectangle(false)
  clickEllipse(false)
  clickSpline(false)
end
