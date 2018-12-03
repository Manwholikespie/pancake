local game = {}

function game:init()
    -- load assets and textures
end

function game:enter()
    -- initialize game objects
    self.message = "You are now playing the game."
end

function game:leave()
    -- end music
    -- TODO: add music ;)
end

function game:draw()
    love.graphics.print(self.message)
end

function game:update(dt)
end

function game:keyreleased(key, code)
    -- show instructions
    if key == 'return' then
        hump.gamestate.switch(gamestates.game)
    end
end

return game