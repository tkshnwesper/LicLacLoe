local draw = require "draw"
local calculate = require "calculate"
local ttt_import = require "ttt"
local ttt = ttt_import:new()

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.mousepressed(x, y, button, isTouch)
    xsq, ysq = calculate.whichSquare(x, y)
    ttt:at(xsq, ysq)
end

function love.draw()
    draw.squares(ttt.board)
    draw.lines()
    if xsq and ysq then
        love.graphics.setColor(0, 0, 0)
        love.graphics.print(xsq .. ' ' .. ysq, 0, 0)
    end
end
