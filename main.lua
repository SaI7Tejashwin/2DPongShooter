
local window_height = love.graphics.getHeight()

function love.load()
  local window_width = love.graphics.getWidth()
  Object = require "classic"
  require "player"
  require "enemy"
  p = Player(100, window_height - 100, 200, 50, 400)
  e1 = Enemy(100, 100, 100, 100)
  e2 = Enemy(window_width-200, 300, 50, -200)
end



function love.update(dt)
  p:update(dt)
  e1:update(dt)
  e2:update(dt)
end

function love.draw()
  p:draw()
  e1:draw()
  e2:draw()
end
