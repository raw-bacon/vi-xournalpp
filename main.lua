function initUi()
  -- modes
  app.registerUi({["menu"] = "Enter tool mode",       ["callback"] = "t", ["accelerator"] = "t"}); -- Tool
  app.registerUi({["menu"] = "Enter color mode",      ["callback"] = "c", ["accelerator"] = "c"}); -- Color
  app.registerUi({["menu"] = "Enter shape mode",      ["callback"] = "a", ["accelerator"] = "a"}); -- shApe
  app.registerUi({["menu"] = "Enter line style mode", ["callback"] = "q", ["accelerator"] = "q"}); -- q for no reason
  -- thickness
  app.registerUi({["menu"] = "Very fine",  ["callback"] = "one",   ["accelerator"] = "1"});
  app.registerUi({["menu"] = "Fine",       ["callback"] = "two",   ["accelerator"] = "2"});
  app.registerUi({["menu"] = "Medium",     ["callback"] = "three", ["accelerator"] = "3"});
  app.registerUi({["menu"] = "Thick",      ["callback"] = "four",  ["accelerator"] = "4"});
  app.registerUi({["menu"] = "Very thick", ["callback"] = "five",  ["accelerator"] = "5"});
  -- tool mode
  app.registerUi({["menu"] = "Select pen tool (tool mode)",         ["callback"] = "w", ["accelerator"] = "w"}); -- w for write
  app.registerUi({["menu"] = "Select eraser tool (tool mode)",      ["callback"] = "e", ["accelerator"] = "e"}); -- e for erase
  app.registerUi({["menu"] = "Select highlighter tool (tool mode)", ["callback"] = "f", ["accelerator"] = "f"}); -- f for fat
  app.registerUi({["menu"] = "Select select tool (tool mode)",      ["callback"] = "s", ["accelerator"] = "s"}); -- s for select
  -- color mode
  app.registerUi({["menu"] = "black (color mode)",  ["callback"] = "x", ["accelerator"] = "x"}); -- blaX
  app.registerUi({["menu"] = "white (color mode)",  ["callback"] = "w", ["accelerator"] = "w"}); -- White
  app.registerUi({["menu"] = "pink (color mode)",   ["callback"] = "q", ["accelerator"] = "q"}); -- pinQ
  app.registerUi({["menu"] = "red (color mode)",    ["callback"] = "r", ["accelerator"] = "r"}); -- Red
  app.registerUi({["menu"] = "orange (color mode)", ["callback"] = "o", ["accelerator"] = "o"}); -- Orange
  app.registerUi({["menu"] = "yellow (color mode)", ["callback"] = "y", ["accelerator"] = "y"}); -- Yellow
  app.registerUi({["menu"] = "green (color mode)",  ["callback"] = "g", ["accelerator"] = "g"}); -- Green
  app.registerUi({["menu"] = "cyan (color mode)",   ["callback"] = "c", ["accelerator"] = "c"}); -- Cyan
  app.registerUi({["menu"] = "blue (color mode)",   ["callback"] = "b", ["accelerator"] = "b"}); -- Blue
  app.registerUi({["menu"] = "purple (color mode)", ["callback"] = "p", ["accelerator"] = "p"}); -- Purple
  -- shape mode
  app.registerUi({["menu"] = "Straight line (shape mode)", ["callback"] = "s", ["accelerator"] = "s"});
  app.registerUi({["menu"] = "Arrow (shape mode)",         ["callback"] = "a", ["accelerator"] = "a"});
  app.registerUi({["menu"] = "Rectangle (shape mode)",     ["callback"] = "r", ["accelerator"] = "r"});
  app.registerUi({["menu"] = "Ellipse (shape mode)",       ["callback"] = "e", ["accelerator"] = "e"});
  app.registerUi({["menu"] = "Bézier curve (shape mode)",  ["callback"] = "b", ["accelerator"] = "b"});
  -- line style mode
  app.registerUi({["menu"] = "Plain (line style mode)",        ["callback"] = "a", ["accelerator"] = "a"});
  app.registerUi({["menu"] = "Dashed (line style mode)",       ["callback"] = "s", ["accelerator"] = "s"});
  app.registerUi({["menu"] = "Dotted (line style mode)",       ["callback"] = "d", ["accelerator"] = "d"});
  app.registerUi({["menu"] = "Dash-dotted (line style mode)",  ["callback"] = "f", ["accelerator"] = "f"});
end


-- change the hex values to customize colors
local blackColor  = 0x000000
local whiteColor  = 0xffffff
local pinkColor   = 0xf88fea 
local redColor    = 0xed6060
local orangeColor = 0xec9435
local yellowColor = 0xe9f23a
local greenColor  = 0x6ae170
local cyanColor   = 0x44e8e1
local blueColor   = 0x7c80ec
local purpleColor = 0xb57ed9

-- the modes are "tool", "color", "linestyle", and "shape"
local currentMode = "tool"

function a()
  if currentMode == "tool" then
    currentMode = "shape"
  elseif currentMode == "shape" then
    app.uiAction({["action"] = "ACTION_TOOL_DRAW_ARROW"})
    currentMode = "tool"
  elseif currentMode == "linestyle" then
    app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_PLAIN"})
    currentMode = "tool"
  end
end

function b()
  if currentMode == "color" then
    app.changeToolColor({["color"] = blueColor, ["selection"] = true})
  elseif currentMode == "shape" then
    app.uiAction({["action"] = "ACTION_TOOL_DRAW_SPLINE"})
    currentMode = "tool"
  end
end

function c()
  if currentMode == "tool" then
    currentMode = "color"
  elseif currentMode == "color" then
    setColor(cyanColor)
  end
end

function d()
  if currentMode == "linestyle" then
    app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_DOT"})
    currentMode = "tool"
  end
end

function e()
  if currentMode == "tool" then
    app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
  elseif currentMode == "shape" then
    app.uiAction({["action"] = "ACTION_TOOL_DRAW_ELLIPSE"})
    currentMode = "tool"
  end
end

function f()
  if currentMode == "tool" then
    app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  elseif currentMode == "linestyle" then
    app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_DASH_DOT"})
    currentMode = "tool"
  end
end

function g()
  if currentMode == "color" then
    setColor(greenColor)
  end
end

function o()
  if currentMode == "color" then
    setColor(orangeColor)
  end
end

function p()
  if currentMode == "color" then
    setColor(purpleColor)
  end
end

function q()
  if currentMode == "tool" then
    currentMode = "linestyle"
  elseif currentMode == "color" then
    setColor(pinkColor)
  end
end

function r()
  if currentMode == "color" then
    setColor(redColor)
  elseif currentMode == "shape" then
    app.uiAction({["action"] = "ACTION_TOOL_DRAW_RECT"})
    currentMode = "tool"
  end
end

function s()
  if currentMode == "tool" then
    app.uiAction({["action"] = "ACTION_TOOL_SELECT_REGION"})
  elseif currentMode == "shape" then
    app.uiAction({["action"] = "ACTION_RULER"})
    currentMode = "tool"
  elseif currentMode == "linestyle" then
    app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_DASH"})
    currentMode = "tool"
  end
end

function t()
  currentMode = "tool"
end

function w()
  if currentMode == "tool" then
    app.uiAction({["action"] = "ACTION_TOOL_PEN"})
    -- make sure ruler and arrow are deactivated
    app.uiAction({["action"] = "ACTION_RULER", ["enabled"] = false})
    app.uiAction({["action"] = "ACTION_TOOL_DRAW_ARROW", ["enabled"] = false})
  elseif currentMode == "color" then
    setColor(whiteColor)
  end
end

function x()
  if currentMode == "color" then
    setColor(blackColor)
  end
end

function y()
  if currentMode == "color" then
    setColor(yellowColor)
  end
end


function one()
  app.uiAction({["action"] = "ACTION_SIZE_VERY_FINE"})
end

function two()
  app.uiAction({["action"] = "ACTION_SIZE_FINE"})
end

function three()
  app.uiAction({["action"] = "ACTION_SIZE_MEDIUM"})
end

function four()
  app.uiAction({["action"] = "ACTION_SIZE_THICK"})
end

function five()
  app.uiAction({["action"] = "ACTION_SIZE_VERY_THICK"})
end


function setColor(color)
  app.changeToolColor({["color"] = color, ["selection"] = true})
  currentMode = "tool"
end

