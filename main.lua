debug = true

hump = {
    camera = require "hump.camera",
    gamestate = require "hump.gamestate",
    timer = require "hump.timer"
}

gamestates = {
    splash = require "gamestates.splash",
    game = require "gamestates.game"
}

-- Called when the game first starts.
function love.load(arg)
    --- LOAD ASSETS

    -- Load in our font and set the size to 20.
    love.graphics.setFont(love.graphics.newFont("assets/fonts/Oxygen-Sans.ttf", 20))

    -- Register our game states.
    hump.gamestate.registerEvents()
    hump.gamestate.switch(gamestates.splash)
end

function love.update(dt)
end

--- UTILITIES