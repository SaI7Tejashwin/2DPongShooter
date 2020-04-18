Player = Object:extend()


--player is a rectangle
function Player:new(x, y, width, height, speed)
  self.x = x
  self.y = y
  self.width = width
  self.height = height 
  self.speed = speed

end

function Player:draw()
  love.graphics.setColor(0,0,1)
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Player:update(dt)
  if love.keyboard.isDown("left") then
    self.x = self.x - self.speed * dt
  elseif love.keyboard.isDown("right") then
    self.x = self.x + self.speed * dt
  end

  local window_width = love.graphics.getWidth()

  if self.x < 0 then --if too far to the left
    --set x to 0
    self.x = 0

  elseif self.x + self.width > window_width then
    --set the position to window_width
    self.x = window_width - self.width
  end
end




