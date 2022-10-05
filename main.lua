_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.7, 0.2, 0.2)

    _G.pacman = {
        x = 700,
        y = 400
    }

    _G.food = {
        x = 850,
        eaten = false
    }  
    
end

function love.update(dt)
    
    if love.keyboard.isDown("a") then
        pacman.x = pacman.x - 1
    elseif love.keyboard.isDown("d") then
        pacman.x = pacman.x + 1
    end
    


    if pacman.x == food.x + 20 then
        food.eaten = true
    end

end

function love.draw()
    
    if not food.eaten then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", food.x, 370, 50, 50)    
    end


    love.graphics.setColor(1, 0.8, 0.0)
    love.graphics.arc("fill", pacman.x, pacman.y, 100, 0.5, 5.5)
end