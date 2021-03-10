function initUi()
  -- mode shortcuts
  app.registerUi({["menu"] = "Enter normal mode", ["callback"] = "a", ["accelerator"] = "a"}); -- = "Escape" did not work
  app.registerUi({["menu"] = "Enter color mode", ["callback"] = "c", ["accelerator"] = "c"});
  -- normal mode
  app.registerUi({["menu"] = "Cycle through line style (normal mode)", ["callback"] = "q", ["accelerator"] = "q"}); -- q for no reason
  app.registerUi({["menu"] = "Select pen tool (normal mode)", ["callback"] = "w", ["accelerator"] = "w"}); -- w for write
  app.registerUi({["menu"] = "Select eraser tool (normal mode)", ["callback"] = "e", ["accelerator"] = "e"}); -- e for erase
  app.registerUi({["menu"] = "Select highlighter tool (normal mode)", ["callback"] = "f", ["accelerator"] = "f"}); -- f for fat
  app.registerUi({["menu"] = "Select select tool (normal mode)", ["callback"] = "s", ["accelerator"] = "s"}); -- s for select
  -- color mode
  app.registerUi({["menu"] = "black (color mode)", ["callback"] = "x", ["accelerator"] = "x"});   -- blaX
  app.registerUi({["menu"] = "white (color mode)", ["callback"] = "w", ["accelerator"] = "w"});   -- White
  app.registerUi({["menu"] = "pink (color mode)", ["callback"] = "q", ["accelerator"] = "q"});    -- pinQ
  app.registerUi({["menu"] = "red (color mode)", ["callback"] = "r", ["accelerator"] = "r"});     -- Red
  app.registerUi({["menu"] = "orange (color mode)", ["callback"] = "o", ["accelerator"] = "o"});  -- Orange
  app.registerUi({["menu"] = "yellow (color mode)", ["callback"] = "y", ["accelerator"] = "y"});  -- Yellow
  app.registerUi({["menu"] = "green (color mode)", ["callback"] = "g", ["accelerator"] = "g"});   -- Green
  app.registerUi({["menu"] = "cyan (color mode)", ["callback"] = "c", ["accelerator"] = "c"});    -- Cyan
  app.registerUi({["menu"] = "blue (color mode)", ["callback"] = "b", ["accelerator"] = "b"});    -- Blue
  app.registerUi({["menu"] = "purple (color mode)", ["callback"] = "p", ["accelerator"] = "p"});  -- Purple
end

-- the modes are "normal" and "color"
local currentMode = "normal"

local linestyleList = {
  "PLAIN", 
  -- "DASH", 
  -- "DASH_DOT", 
  "DOT"
}

local currentLinestyle = 1

local blackColor = 0x000000
local whiteColor = 0xffffff
local pinkColor = 0xf88fea 
local redColor = 0xed6060
local orangeColor = 0xec9435
local yellowColor = 0xe9f23a
local greenColor = 0x6ae170
local cyanColor = 0x44e8e1
local blueColor = 0x7c80ec
local purpleColor = 0xb57ed9

function a()
  currentMode = "normal"
end

function b()
  if currentMode == "color" then
    app.changeToolColor({["color"] = blueColor, ["selection"] = true})
  end
end

function c()
  if currentMode == "normal" then
    currentMode = "color"
  elseif currentMode == "color" then
    setColor(cyanColor)
  end
end

function e()
  if currentMode == "normal" then
    app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
  end
end

function f()
  if currentMode == "normal" then
    app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
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
  if currentMode == "normal" then
    currentLinestyle = currentLinestyle % #linestyleList + 1
    app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_" .. linestyleList[currentLinestyle]})
  elseif currentMode == "color" then
    setColor(pinkColor)
  end
end

function r()
  if currentMode == "color" then
    setColor(redColor)
  end
end

function s()
  if currentMode == "normal" then
    app.uiAction({["action"] = "ACTION_TOOL_SELECT_REGION"})
  end
end

function w()
  if currentMode == "normal" then
    app.uiAction({["action"] = "ACTION_TOOL_PEN"})
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


function setColor(color)
  app.changeToolColor({["color"] = color, ["selection"] = true})
  currentMode = "normal"
end

