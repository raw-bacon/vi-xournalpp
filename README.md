# vi-xournalpp
This is a tiny plugin for [Xournal++](https://github.com/xournalpp/xournalpp),
unstable version (>=1.1).
To set the plugin up on Linux, run

```
cd /usr/share/xournalpp/plugins
git clone https://github.com/raw-bacon/vi-xournalpp
```

vi-xournalpp is inspired by the modal editing popularized
by the text editor vi. 
The two basic philosophies of the default keybindings of vi-xournalpp are

- They should be easy to remember mnemonically,
- They should be accessible by the left hand on a QWERTY/QWERTZ/AZERTY keyboard.

The second philosophy is broken for certain colors (e.g. `o`range).

# Thickness
In any mode, thickness can be adjusted with numbers:


# Modes
The default mode is `tool` mode.
Tool mode is used for switching between the different tools and modes.
The other modes are `color`, `shape`, and `linestyle`.
The `color` mode is used to switch between the different colors,
and the `shape` mode is used to select the different shapes (`ruler`,
`arrow`, `rectangle`, and `ellipse`) for the pen tool.
The `linestyle` mode allows for switching between `plain`, `dotted` and `dashed`
linestyles.

## Tool mode
The keybindings of `tool` mode consist of
three parts.
The first is the keybindings for modes (which could be thought
of as other tools). By default, they are

1. `t`: `tool` mode (this is always accessible)
2. `c`: `color` mode
3. `a`: `shape` mode
4. `q`: `line` style mode

The second part is the keybindings for tools.
By default, those are

1. `w`: `pen` tool (w is for write)
2. `e`: `eraser` tool
3. `f`: `highlighter` tool (f is for fat)
4. `s`: `selection` tool

On version 1.0, the highlighter tool was called
`HILIGHTER` in the API rather than
`HIGHLIGHTER`. This should be a find and replace away from working
on this version.

The third part is the keybindings for tool thickness.
By default, they are

1. `1`: `veryFine`
2. `2`: `fine`
3. `3`: `medium`
4. `4`: `thick`
5. `5`: `veryThick`


## Color mode
The default keybindings for color mode are

1.  `r`: `red`
2.  `o`: `orange`
3.  `y`: `yellow`
4.  `g`: `green`
5.  `c`: `cyan`
6.  `b`: `blue`
7.  `p`: `purple`
8.  `q`: `pink`
9.  `w`: `white`
10. `x`: `black`

If you are running version 1.0,
`color` mode will not work, and if you try
to change color you will get a warning
message.
This is because the API of version 1.0
does not support color change.

## Shape mode
The default keybindings for shape mode are

1. `s`: `ruler` (`s` is for straight)
2. `a`: `arrow`
3. `r`: `rectangle`
4. `e`: `ellipse`
5. `b`: `spline` (`b` is for bezier curve)

## Line style mode
The default keybindings for line style mode are

1. `a`: `plain`
2. `s`: `dashed`
3. `d`: `dotted`
4. `f`: `dashDotted`

