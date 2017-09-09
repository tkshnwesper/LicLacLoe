local dimensions = require "dimensions"
local cal = {}

function cal.whichSquare(x, y)
    local dims = dimensions.get()
    local xsq = math.floor(x / dims.w3rd) + 1
    local ysq = math.floor(y / dims.h3rd) + 1
    return xsq, ysq
end

return cal
