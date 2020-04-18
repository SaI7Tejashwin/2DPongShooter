Enemy = Object:extend()

function Enemy:new(x, y, radius, speed)
  self.x = x
  self.y = y
  self.radius = radius
  self.speed = speed
end

function Enemy:update(dt)
  self.x = self.x - self.speed * dt

  local window_width = love.graphics.getWidth()

  if self.x < 0 then
    self.x = 0
    self.speed = -self.speed
  end

  if self.x + self.radius > window_width then
    self.x = window_width - self.radius
    self.speed = -self.speed
  end

end

function Enemy:draw()
  love.graphics.setColor(1,0,0)
  love.graphics.circle("fill", self.x, self.y, self.radius)
end
