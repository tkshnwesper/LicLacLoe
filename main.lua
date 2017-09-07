local draw = require "draw"

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

-- function love.load()
--     love.window.maximize()
-- end

function love.draw()
    love.graphics.setColor(252, 247, 255)
    draw.squares()
end
