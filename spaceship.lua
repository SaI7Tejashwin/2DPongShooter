Spaceship = Object:extend()


--player is a Image
function Spaceship:new()
  self.image = love.graphics.newImage("Player.png")
  self.width = self.image:getWidth()
  self.x = 325
  self.y = 500
  self.speed = 500
end

function Spaceship:draw()
  love.graphics.draw(self.image, self.x, self.y, math.rad(0), 2, 2)
end

function Spaceship:update(dt)
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

function Spaceship:keyPressed(key)
  if key == "space" then
    table.insert(listOfBullets, Bullets(self.x +(self.width/2), self.y))
  end
end
