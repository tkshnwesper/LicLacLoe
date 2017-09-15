local dimensions = require "dimensions"
local cal = {}

function cal.whichSquare(x, y)
    local dims = dimensions.get()
    local xsq = math.floor(x / dims.w3rd) + 1
    local ysq = math.floor(y / dims.h3rd) + 1
    return xsq, ysq
end

function diff(num, nums, d)
    local verdict = 0
    for i = 1, #nums do
        for j = 0, 2 do
            if nums[i] == num + j * d then
                verdict = verdict + 1
            end
        end
    end
    return verdict == 3
end

function conditionSatisfied(nums)
    if #nums < 2 then return false end
    -- horizontal
    if diff(1, nums, 1) or diff(4, nums, 1) or diff(7, nums, 1) then
        return true
    end
    -- vertical
    if diff(1, nums, 3) or diff(2, nums, 3) or diff(3, nums, 3) then
        return true
    end
    -- diagonal
    if diff(1, nums, 4) or diff(3, nums, 2) then
        return true
    end
    return false
end
    
    

function cal.winCondition(board)
    local oNums = {}
    local xNums = {}
    for i = 1, 9 do
        if board[i] == 'X' then
            xNums[#xNums + 1] = i
        elseif board[i] == 'O' then
            oNums[#oNums + 1] = i
        end
    end
    if conditionSatisfied(xNums) then
        return 'X'
    elseif conditionSatisfied(oNums) then
        return 'O'
    else
        return false
    end
end

return cal
