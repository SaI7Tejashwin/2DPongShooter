
local window_height = love.graphics.getHeight()

function love.load()
  local window_width = love.graphics.getWidth()
  Object = require "classic"
  require "player"
  require "enemy"
  require "bullets"
  require "spaceship"
  ---p = Player(100, window_height - 100, 200, 50, 400)
  sps = Spaceship()
  e1 = Enemy(100, 100, 100, 100)
  e2 = Enemy(window_width-200, 300, 50, -200)
  listOfBullets = {}
end

function love.keypressed(key)
  ---p:keyPressed(key)
  sps:keyPressed(key)
end


function love.update(dt)
  ---p:update(dt)
  sps:update(dt)
  e1:update(dt)
  e2:update(dt)

  for i,v in ipairs(listOfBullets) do
    v:update(dt)

    if v.gone then
      table.remove(listOfBullets, i)
    end
  end
end

function love.draw()
  ---p:draw()
  sps:draw()
  e1:draw()
  e2:draw()

  for i,v in ipairs(listOfBullets) do
    v:draw()
  end
end
