Spawner = Object:extend()

function Spawner:new()
  self.spawnRate = 50
  self.count = 0
  self.width = love.graphics.getWidth()
  self.speed = 500
end

function Spawner:update(dt)
  if math.fmod(self.count, 2) == 0 then
    table.insert(asteroids, Obstacle(math.random(0, self.width)))
  end

  self.count = self.count + self.spawnRate * dt

  if self.count > 100 then
    self.count = 0
  end
end
