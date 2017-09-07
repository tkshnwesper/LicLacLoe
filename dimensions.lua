local dims = {}

function dims.get()
    local width, height = love.graphics.getDimensions()
    local w3rd = width / 3
    local h3rd = height / 3
    local ret = {}
    ret.width = width
    ret.height = height
    ret.w3rd = w3rd
    ret.h3rd = h3rd
    return ret
end

return dims