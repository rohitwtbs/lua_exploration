-- Base class
Shape = {}
Shape.__index = Shape

function Shape:new(x, y)
    local obj = setmetatable({}, self)
    obj.x = x or 0
    obj.y = y or 0
    return obj
end

function Shape:move(dx, dy)
    self.x = self.x + dx
    self.y = self.y + dy
end

-- Derived class
Rectangle = setmetatable({}, {__index = Shape})
Rectangle.__index = Rectangle

function Rectangle:new(x, y, width, height)
    local obj = Shape.new(self, x, y)
    obj.width = width or 0
    obj.height = height or 0
    return obj
end

function Rectangle:area()
    return self.width * self.height
end

-- Usage
local rect = Rectangle:new(10, 20, 5, 6)
print(rect.x, rect.y)         -- 10  20
print(rect:area())            -- 30
rect:move(2, 3)
print(rect.x, rect.y)         -- 12  23