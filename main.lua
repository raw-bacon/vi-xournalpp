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
  -- app.registerUi({["menu"] = "Very fine",  ["callback"] = "one",   ["accelerator"] = veryFine});
  -- app.registerUi({["menu"] = "Fine",       ["callback"] = "two",   ["accelerator"] = fine});
  -- app.registerUi({["menu"] = "Medium",     ["callback"] = "three", ["accelerator"] = medium});
  -- app.registerUi({["menu"] = "Thick",      ["callback"] = "four",  ["accelerator"] = thick});
  -- app.registerUi({["menu"] = "Very thick", ["callback"] = "five",  ["accelerator"] = veryThick});
  -- tool mode
  -- app.registerUi({["menu"] = "Select pen tool (tool mode)",         ["callback"] = "w", ["accelerator"] = "w"});
  -- app.registerUi({["menu"] = "Select eraser tool (tool mode)",      ["callback"] = "e", ["accelerator"] = "e"});
  -- app.registerUi({["menu"] = "Select highlighter tool (tool mode)", ["callback"] = "f", ["accelerator"] = "f"});
  -- app.registerUi({["menu"] = "Select select tool (tool mode)",      ["callback"] = "s", ["accelerator"] = "s"});
  -- color mode
  -- app.registerUi({["menu"] = "black (color mode)",  ["callback"] = "x", ["accelerator"] = "x"});
  -- app.registerUi({["menu"] = "white (color mode)",  ["callback"] = "w", ["accelerator"] = "w"});
  -- app.registerUi({["menu"] = "pink (color mode)",   ["callback"] = "q", ["accelerator"] = "q"});
  -- app.registerUi({["menu"] = "red (color mode)",    ["callback"] = "r", ["accelerator"] = "r"});
  -- app.registerUi({["menu"] = "orange (color mode)", ["callback"] = "o", ["accelerator"] = "o"});
  -- app.registerUi({["menu"] = "yellow (color mode)", ["callback"] = "y", ["accelerator"] = "y"});
  -- app.registerUi({["menu"] = "green (color mode)",  ["callback"] = "g", ["accelerator"] = "g"});
  -- app.registerUi({["menu"] = "cyan (color mode)",   ["callback"] = "c", ["accelerator"] = "c"});
  -- app.registerUi({["menu"] = "blue (color mode)",   ["callback"] = "b", ["accelerator"] = "b"});
  -- app.registerUi({["menu"] = "purple (color mode)", ["callback"] = "p", ["accelerator"] = "p"});
  -- shape mode
  -- app.registerUi({["menu"] = "Straight line (shape mode)", ["callback"] = "s", ["accelerator"] = "s"});
  -- app.registerUi({["menu"] = "Arrow (shape mode)",         ["callback"] = "a", ["accelerator"] = "a"});
  -- app.registerUi({["menu"] = "Rectangle (shape mode)",     ["callback"] = "r", ["accelerator"] = "r"});
  -- app.registerUi({["menu"] = "Ellipse (shape mode)",       ["callback"] = "e", ["accelerator"] = "e"});
  -- app.registerUi({["menu"] = "Bézier curve (shape mode)",  ["callback"] = "b", ["accelerator"] = "b"});
  -- line style mode
  -- app.registerUi({["menu"] = "Plain (line style mode)",        ["callback"] = "a", ["accelerator"] = "a"});
  -- app.registerUi({["menu"] = "Dashed (line style mode)",       ["callback"] = "s", ["accelerator"] = "s"});
  -- app.registerUi({["menu"] = "Dotted (line style mode)",       ["callback"] = "d", ["accelerator"] = "d"});
  -- app.registerUi({["menu"] = "Dash-dotted (line style mode)",  ["callback"] = "f", ["accelerator"] = "f"});
end


-- the modes are "tool", "color", "linestyle", and "shape"
local currentMode = "tool"


-- Tool mode
function onToolKey()
  currentMode = "tool"
end


-- Color mode
function onColorKey()
  handle(currentMode, color)
end

-- Shape mode
function onShapeKey()
  handle(currentMode, shape)
end

-- Linestyle mode
function onLinestyleKey()
  forwardModeKey(linestyle, "linestyle")
end

function forwardModeKey(key, newMode)
  if canSwitchModes(currentMode) then
    currentMode = newMode
    print("Entered " .. " mode")
    return true
  else
    handle(currentMode, key)
  end
end

function canSwitchModes(someMode)
  return someMode == "tool"
end

function handle(mode, key)
  if mode == "tool" then
    toolModeHandle(key)
  elseif mode == "color" then
    colorModeHandle(key)
  elseif mode == "shape" then
    shapeModeHandle(key)
  elseif mode == "linestyle" then
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
-- TODO
end

function shapeModeHandle(key)
-- TODO
end

function linestyleModeHandle(key)
-- TODO 
end

function setColor(color)
  app.changeToolColor({["color"] = color, ["selection"] = true})
  currentMode = "tool"
end

