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

function Bullets:checkCollision(obj)
  local self_left = self.x
  local self_right = self.x + self.radius
  local self_top = self.y
  local self_bottom = self.y + self.radius


  local obj_left = obj.x
  local obj_right = obj.x + obj.width
  local obj_top = obj.y
  local obj_bottom = obj.y + obj.height
  if self_right > obj_left and
  self_left < obj_right and
  self_bottom > obj_top and
  self_top < obj_bottom then
    self.gone = true
    obj.gone = true
  end
end

function Bullets:update(dt)
  self.y = self.y + self.speed * dt

  if self.y < 0 then
    self.gone = true
  end
end
