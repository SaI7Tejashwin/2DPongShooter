Bullets = Object:extend()

function Bullets:new(x, y)
  self.x = x
  self.y = y
  self.radius = 3
  self.speed = -1000
  self.gone = false

end


function Bullets:draw()
  love.graphics.circle("fill", self.x, self.y, self.radius)
end

function Bullets:update(dt)
  self.y = self.y + self.speed * dt

  if self.y < 0 then
    self.gone = true
  end
end
