local draw = {}

local width, height = love.graphics.getDimensions()
local w3rd = width / 3
local h3rd = height / 3

local function square(i, j)
    love.graphics.rectangle('fill', (j - 1) * w3rd, (i - 1) * h3rd, w3rd, h3rd)
end


function draw.squares()
    for i = 1, 3 do
        for j = 1, 3 do
            square(i, j)
        end
    end
end

return draw