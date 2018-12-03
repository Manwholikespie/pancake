running = true

function love.keyreleased(key)
    if key == "return" then
        -- advance to the next screen
        running = false
    end
end

function love.draw()
    if not running then return end
    love.graphics.print("Welcome Title")
end