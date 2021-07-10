UDim2 = require("UDim2")

local size = UDim2:FromScale(0.5, 0.1) -- cover the top left part of the screen half way horizontally
local t = display.newRect(10, 10, size.x, size.y ) -- posx, posy, width, height
t.anchorX = 0
t.anchorY = 0

local size = UDim2:FromScale(1, 1) -- 1 inch cube
local pos = UDim2.new(1, -10, 1, -10) -- bottom right hand side of screen 10 pixels back in
local h = display.newRect(pos.x, pos.y, size.x, size.y ) -- posx, posy, width, height
t.anchorX = 1
t.anchorY = 1
