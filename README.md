UDim2 - FOR ANDROID \
Roblox Style UDim2's for Corona SDK / Solar2D SDK

Scale = percent of screen represented as 0-1
Offset = Screen INCHES

# UDim2.new ( number xScale, number xOffset, number yScale, number yOffset )
    Construct a new UDim2
    xScale and yScale are both 0-1 values representing 0 - 100% of the screen
    xOffset and yOffset are in terms of screen INCHES
    returns UDim2 Object

# UDim2:fromScale(xScale, yScale)
    Construct a new UDim2
    Based on percent screen
    equivalent to UDim2.new(xScale, 0, yScale, 0)
    returns UDim2 Object

# UDim2:fromOffset ( number xOffset, number yOffset )
    Construct a new UDim2
    Based on percent INCHES
    equivalent to UDim2.new(0, xOffset, 0, yOffset)
    returns UDim2 Object

# Properties
    UDim2.x - The x dimension scale and offset
    UDim2.y - The y dimension scale and offset

# UDim2 UDim2:Lerp ( UDim2 goal, number alpha )
    Returns a UDim2 interpolated linearly between this UDim2 and the given goal. The alpha value should be a number between 0 and 1.

# Math Operations
    UDim2 = UDim2 + UDim2
    UDim2 = UDim2 - UDim2
