local start_time = os.clock()

local count = 0
for i = 1, 100000 do
    for j = 1, 10000 do
        count = count + 1
    end
end

local end_time = os.clock()
print("Completed 1 billion nested iterations.")
print("Elapsed time: " .. (end_time - start_time) .. " seconds")
print("Final count: " .. count)
