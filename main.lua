local draw = require "draw"
local calculate = require "calculate"

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.mousepressed(x, y, button, isTouch)
    xsq, ysq = calculate.whichSquare(x, y)
end

function love.draw()
    draw.squares()
    draw.lines()
    if xsq and ysq then
        love.graphics.setColor(0, 0, 0)
        love.graphics.print(xsq .. ' ' .. ysq, 0, 0)
    end
end
