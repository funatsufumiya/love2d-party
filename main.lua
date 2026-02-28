local party = require("party")
local system = party(750)
    :origin(50, 50)
    :radius(5, 25)
    :startColor(0, 0.2, 1)
    :areaSpread(100, 60)
    :linearAcceleration(0, 1000)
    :endColor(0, 0.9, 1, 0)
    :lifetime(1, 1.2)
    :startAngle(-math.pi, math.pi)
    :spin(-2, 2)
    :direction(math.pi / 2)
    :speed(250)

local particleImage

function love.load()
	particleImage = love.graphics.newImage("particle.png")
	system:texture(particleImage)
end

function love.update(dt)
	system:update(dt)
end

function love.draw()
	system:draw()
end