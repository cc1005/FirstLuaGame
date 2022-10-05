_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.5, 0.5, 1)

    _G.pacman = {}
    pacman.x = 700
    pacman.y = 400
    pacman.eat = false

    _G.food_x = 850
end

function love.update(dt)
    pacman.x = pacman.x + 1
    
    if pacman.x == food_x + 20 then
        pacman.eat = true
    end

end

function love.draw()
    
    if not pacman.eat then
        love.graphics.setColor(1, 0, 0)
        love.graphics.rectangle("fill", food_x, 370, 50, 50)    
    end


    love.graphics.setColor(1, 0.8, 0.0)
    love.graphics.arc("fill", pacman.x, pacman.y, 100, 0.5, 5.5)
end