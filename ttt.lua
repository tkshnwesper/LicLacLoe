local ttt = {}

function ttt:new()
    local temp = {}
    temp.board = {}

    for i = 1, 9 do
        temp.board[i] = ''
    end

    temp.turn = 1
    self.__index = self
    return setmetatable(temp, self)
end

function ttt:at(x, y)
    local chr
    if self.turn % 2 == 0 then
        chr = 'O'
    else
        chr = 'X'
    end
    self.board[x + (y - 1) * 3] = chr
    self.turn = self.turn + 1
end

return ttt