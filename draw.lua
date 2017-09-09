local dimensions = require "dimensions"

local draw = {}

local constant = 100
local constant2 = 0.05

-- responsible for every single square
local function square(dims, i, j, chr)
    love.graphics.setColor(252, 247, 255)
    love.graphics.rectangle(
        'fill', (j - 1) * dims.w3rd,
        (i - 1) * dims.h3rd,
        dims.w3rd,
        dims.h3rd
    )
    love.graphics.setColor(0, 0, 0)
    love.graphics.print(
        chr,
        (j - 1) * dims.w3rd + dims.w3rd / 2 - dims.width * constant2,
        (i - 1) * dims.h3rd + dims.h3rd / 2 - dims.height * constant2,
        0,
        dims.width / constant,
        dims.height / constant
    )
end

-- function to draw all the squares on the tic tac toe board
function draw.squares(board)
    local dims = dimensions.get()
    for i = 1, 3 do
        for j = 1, 3 do
            square(dims, i, j, board[(i - 1) * 3 + j])
        end
    end
end

-- draws the vertical lines on the board
function verticalLines()
    local dims = dimensions.get()
    local y1 = 0
    local y2 = dims.height
    love.graphics.setColor(0, 0, 0)
    for i = 1, 2 do
        love.graphics.line(i * dims.w3rd, y1, i * dims.w3rd, y2)
    end
end

-- draws the horizontal lines on the board
function horizontalLines()
    local dims = dimensions.get()
    local x1 = 0
    local x2 = dims.width
    love.graphics.setColor(0, 0, 0)
    for i = 1, 2 do
        love.graphics.line(x1, i * dims.h3rd, x2, i * dims.h3rd)
    end
end

function draw.lines()
    verticalLines()
    horizontalLines()
end

return draw