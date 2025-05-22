local lanes = require "lanes".configure()

local function job(name, delay, count)
    for i = 1, count do
        print(name .. ": step " .. i)
        os.execute("sleep " .. delay)
    end
end

local linda = lanes.linda()

local thread1 = lanes.gen("*", job)("A", 1, 3)
local thread2 = lanes.gen("*", job)("B", 1, 3)

thread1:join()  -- Wait for thread1 to finish
thread2:join()  -- Wait for thread2 to finish