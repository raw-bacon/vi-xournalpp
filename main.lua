require "config"
require "api"
require "colors"


function initUi()
  -- modes
  app.registerUi({["menu"] = "Enter tool mode",       ["callback"] = "onToolKey",      ["accelerator"] = tool}); 
  app.registerUi({["menu"] = "Enter color mode",      ["callback"] = "onColorKey",     ["accelerator"] = color});
  app.registerUi({["menu"] = "Enter shape mode",      ["callback"] = "onShapeKey",     ["accelerator"] = shape});
  app.registerUi({["menu"] = "Enter line style mode", ["callback"] = "onLinestyleKey", ["accelerator"] = linestyle});
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
  app.registerUi({["menu"] = "Bézier curve (shape mode)",  ["callback"] = "onBezierKey",    ["accelerator"] = bezier});
  -- line style mode
  app.registerUi({["menu"] = "Plain (line style mode)",       ["callback"] = "onPlainKey",      ["accelerator"] = plain});
  app.registerUi({["menu"] = "Dashed (line style mode)",      ["callback"] = "onDashedKey",     ["accelerator"] = dashed});
  app.registerUi({["menu"] = "Dotted (line style mode)",      ["callback"] = "onDottedKey",     ["accelerator"] = dotted});
  app.registerUi({["menu"] = "Dash-dotted (line style mode)", ["callback"] = "onDashDottedKey", ["accelerator"] = dashDotted});
end


-- the modes are "tool", "color", "linestyle", and "shape"
currentMode = "tool"


-- KEY EVENTS
function onToolKey()
  -- no condition. does not get handled
  currentMode = "tool"
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

function onBezierKey()
  handle(bezier)
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
  elseif key == shape then
    currentMode = "shape"
  elseif key == linestyle then
    currentMode = "linestyle"
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

function setColor(color)
  app.changeToolColor({["color"] = color, ["selection"] = true})
  currentMode = "tool"
end

