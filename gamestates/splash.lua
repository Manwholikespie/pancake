local splash = {}

function splash:init()
    -- load assets and textures
    self.bgImg = love.graphics.newImage('assets/images/splashbg.jpg')
end

function splash:enter()
    -- initialize game objects
    self.titleText = "Aunt Jemima: The Unforgiving"
    self.creditsText = "This game was made by <JEMIMA GANG>"
    self.pressEnterText = "Press ENTER to begin."
end

function splash:leave()

end

function splash:draw()
    love.graphics.draw(self.bgImg)

    love.graphics.setColor(1, 0, 0, 1)
    love.graphics.print(self.titleText, 5, 5)
    love.graphics.print(self.creditsText, 5, 40)
    love.graphics.print(self.pressEnterText, 5, 75)
    love.graphics.setColor(255, 255, 255)
end

function splash:update(dt)
end

function splash:keyreleased(key, code)
    -- show instructions
    if key == 'return' then
        hump.gamestate.switch(gamestates.game)
    end
end

return splash