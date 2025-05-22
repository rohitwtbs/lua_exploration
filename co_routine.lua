function job(name, delay, count)
    for i = 1, count do
        print(name .. ": step " .. i)
        os.execute("sleep " .. delay)
        coroutine.yield()
    end
end

-- Create coroutines
local co1 = coroutine.create(function() job("A", 1, 3) end)
local co2 = coroutine.create(function() job("B", 1, 3) end)

-- Scheduler
while coroutine.status(co1) ~= "dead" or coroutine.status(co2) ~= "dead" do
    if coroutine.status(co1) ~= "dead" then coroutine.resume(co1) end
    if coroutine.status(co2) ~= "dead" then coroutine.resume(co2) end
end
