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
  end
end

function toolModeHandle(key)
  if key == color then
    currentMode = "color"
    print("Entered color mode")
  elseif key == shape then
    currentMode = "shape"
    print("Entered shape mode")
  elseif key == linestyle then
    currentMode = "linestyle"
    print("Entered linestyle mode")
  elseif key == pen then
    clickPen()
  elseif key == eraser then
    clickEraser()
  elseif key == highlighter then
    clickHighlighter()
  elseif key == selection then
    chlickSelection()
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
