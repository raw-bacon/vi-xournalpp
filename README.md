# vi-xournalpp
This is a tiny plugin for Xournal++ for version >=1.1
(which has yet to see a full release).
It is inspired by the modal editing popularized
by the text editor vi. 

# Modes
The modes are

1. `t`: Tool mode
2. `c`: Color mode
3. `a`: Shape mode

Tool mode is used for switching between the different tools and modes,
color mode is used to switch between the different colors,
and shape mode is used to select the different shapes (straight line,
arrow, rectangle, and circle) for the pen tool.

# Thickness
In any mode, thickness can be adjusted with numbers:

1. `1`: Very fine
2. `2`: Fine
3. `3`: Medium
4. `4`: Thick
5. `5`: Very thick

# Tool mode
The keybindings for tool mode are

1. `w`: Pen tool (w is for write)
2. `e`: Eraser tool
3. `f`: Highlighter tool (f is for fat)
4. `s`: Selection tool

# Color mode
The keybindings for color mode are

1. `r`: Red
2. `o`: Orange
3. `y`: Yellow
4. `g`: Green
5. `c`: Cyan
6. `b`: Blue
7. `p`: Purple
8. `q`: Pink
9. `w`: White
10. `x`: Black

Selecting a color in color mode, 
e.g. entering `cy` for selecting yellow,
automatically returns you to tool mode.

# Shape mode
The keybindings for shape mode are

1. `s`: Straight line
2. `a`: Arrow
3. `r`: Rectangle
4. `e`: Ellipse

Selecting a shape returns you to tool mode.

