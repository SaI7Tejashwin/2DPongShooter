
local window_height = love.graphics.getHeight()

function love.load()
  local window_width = love.graphics.getWidth()
  Object = require "classic"
  require "player"
  require "enemy"
  require "bullets"
  require "spaceship"
  require "obstacle"
  require "spawner"
  ---p = Player(100, window_height - 100, 200, 50, 400)
  sps = Spaceship()
  e1 = Enemy(100, 100, 100, 100)
  e2 = Enemy(window_width-200, 300, 50, -200)
  --ob = Obstacle(math.random(1, window_width))
  s = Spawner()
  listOfBullets = {}
  asteroids = {}
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
  s:update(dt)
  --ob:update(dt)

  for j, t in ipairs(asteroids) do
    t:update(dt)

    if t.gone then
      table.remove(asteroids, j)
    end
  end

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
  --ob:draw()

  for j,t in ipairs(asteroids) do
    t:draw()
  end

  for i,v in ipairs(listOfBullets) do
    v:draw()
  end

end
