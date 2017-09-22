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

local won = false

function love.draw()
    draw.squares(ttt.board)
    draw.lines()
    if won then
        won = false
        love.timer.sleep(3)
        ttt = ttt_import:new()
    end
    local winner = calculate.winCondition(ttt.board)
    if winner then
        love.graphics.print(winner .. ' wins!', 0, 0)
        won = true
    end
end
