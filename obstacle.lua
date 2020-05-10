Obstacle = Object:extend()

local v
local window_height = love.graphics.getHeight()
function Obstacle:new(x)
  self.image = love.graphics.newImage("Asteroid2.png")
  self.x = x
  self.y = -10
  self.speed = 50
  self.width = self.image:getWidth()
  self.height = self.image:getHeight()
  self.angle = 0
  self.torque = 20
  self.gone = false
end

function Obstacle:update(dt)
  self.y = self.y + self.speed * dt

  self.angle = self.angle + self.torque * dt
  if self.y > window_height then
    self.gone = true
  end
end

function Obstacle:draw()
  love.graphics.draw(self.image, self.x, self.y, math.rad(self.angle), 1, 1, self.width/2, self.height/2)
end
