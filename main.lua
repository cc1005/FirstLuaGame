_G.love = require("love")

function love.load()
    _G.number = 0
end

function love.update(dt)
    number = number + 1
    if number == 60 then
        number = 0
    end

end

function love.draw()
    love.graphics.print("Hello World " .. number, 400, 400)
end