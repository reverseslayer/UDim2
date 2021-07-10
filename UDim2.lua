--[[
	Welcome to Mistox's UDim2 for Corona SDK / Solar SDK
	Copyright under Apache 2.0
	Mistox 2021

	This is make for **ANDROID** Modify to fit your need

	local Ud = UDim2.new( xScale, xOffset, yScale, yOffset )
		returns a new UDim2 Instance where Scales are 0-1 as a total percent of the screen
		size and Offset is in INCHES of screen space.
]]

local UDim2 = {}
UDim2["_spx"] = system.getInfo("androidDisplayXDpi") or 141.21 -- Gets ppi of current screen 141.21 is my ppi of my computer display
UDim2["_spy"] = system.getInfo("androidDisplayYDpi") or 141.21 -- Gets ppi of current screen 141.21 is my ppi of my computer display

function UDim2.new(xS, xO, yS, yO)
	
	local mt = {
		metaType = "UDim2",
		_xS = xS,
		_xO = xO,
		_yS = yS,
		_yO = yO,
		x = (xS * display.actualContentHeight) + xO * UDim2._spy,
		y = (yS * display.actualContentWidth) + yO * UDim2._spx,
	}

	function mt.lerp (goal, alpha)
		local uxS = mt["_xS"] + alpha * (goal["_xS"] - metaTable["_xS"])
		local uxO = mt["_xO"] + alpha * (goal["_xO"] - metaTable["_xO"])
		local uyS = mt["_yS"] + alpha * (goal["_yS"] - metaTable["_yS"])
		local uyO = mt["_yO"] + alpha * (goal["_yO"] - metaTable["_yO"])
		return UDim2.new( uxS, uxO, uyS, uyO )
	end

	local ft = {
		__add = function (this, other)
			if (this.metaType == "UDim2" and other.metaType == "UDim2") then
				this._xS = this._xS + other._xS
				this._xO = this._xO + other._xO
				this._yS = this._yS + other._yS
				this._yO = this._yO + other._yO
				this.x = (this._xS * display.actualContentHeight) + this._xO
				this.y = (this._yS * display.actualContentWidth) + this._yO
				return this
			else
				error("Both data types must be UDim2")
			end
		end,
		__sub = function (this, other)
			if (this.metaType == "UDim2" and other.metaType == "UDim2") then
				this._xS = this._xS - other._xS
				this._xO = this._xO - other._xO
				this._yS = this._yS - other._yS
				this._yO = this._yO - other._yO
				this.x = (this._xS * display.actualContentHeight) + this._xO
				this.y = (this._yS * display.actualContentWidth) + this._yO
				return this
			else
				error("Both data types must be UDim2")
			end
		end,
		__newindex = function(table, key, value)
			if key == "xScale" then
				_xS = value
			elseif key == "xOffset" then
				_xO = value
			elseif key == "yScale" then
				_yS = value
			elseif key == "yOffset" then
				_yO = value
			end
			mt.x = (mt._xS * display.actualContentHeigth) + mt._xO
			mt.y = (mt._yS * display.actualContentWidth) + mt._yO
		end
	}

	return setmetatable(mt, ft)
end

function UDim2:FromOffset( xO, yO )
	return UDim2.new(0, xO, 0, yO)
end

function UDim2:FromScale( xS, yS )
	return UDim2.new(xS, 0, yS, 0)
end

return UDim2