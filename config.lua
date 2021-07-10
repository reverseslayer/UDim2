--
-- For more information on config.lua see the Project Configuration Guide at:
-- https://docs.coronalabs.com/guide/basics/configSettings
--

application =
{
	content =
	{
		--[[
			In order for UDim2 to work properly we need to remove
				width = 1080,
				height = 1920,
				scale = "letterbox",
			so that corona sdk / solar2d use the phones real screen resolution no scaling
		]]
		antialias = true,
		fps = 60,
		
		--[[
		imageSuffix =
		{
			    ["@2x"] = 2,
			    ["@4x"] = 4,
		},
		--]]
	},
}
