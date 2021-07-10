UDim2 = require("UDim2")

local size = UDim2:FromScale(0.5, 0.2) -- cover the top left part of the screen half way horizontally
local t = display.newRect(10, 10, size.x, size.y ) -- posx, posy, width, height
t.anchorX = 0
t.anchorY = 0

local size = UDim2:FromOffset(2, 1) -- 1 inch cube
local pos = UDim2.new(1, 0, 1, 0) -- bottom right hand side of screen 10 pixels back in
local h = display.newRect(pos.x - 10, pos.y - 10, size.x, size.y ) -- posx - 10px , posy - 10px, width, height
h.anchorX = 1
h.anchorY = 1
