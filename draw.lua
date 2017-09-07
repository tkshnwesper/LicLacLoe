local dimensions = require "dimensions"

local draw = {}

local constant = 100
local constant2 = 0.05

local function square(dims, i, j)
    love.graphics.setColor(252, 247, 255)
    love.graphics.rectangle(
        'fill', (j - 1) * dims.w3rd,
        (i - 1) * dims.h3rd,
        dims.w3rd,
        dims.h3rd
    )
    love.graphics.setColor(0, 0, 0)
    love.graphics.print(
        'X',
        (j - 1) * dims.w3rd + dims.w3rd / 2 - dims.width * constant2,
        (i - 1) * dims.h3rd + dims.h3rd / 2 - dims.height * constant2,
        0,
        dims.width / constant,
        dims.height / constant
    )
end


function draw.squares()
    local dims = dimensions.get()
    for i = 1, 3 do
        for j = 1, 3 do
            square(dims, i, j)
        end
    end
end

return draw