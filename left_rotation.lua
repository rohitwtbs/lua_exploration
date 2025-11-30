

--
-- Complete the 'rotateLeft' function below.
--
-- The function is expected to return an INTEGER_ARRAY.
-- The function accepts following parameters:
--  1. INTEGER d
--  2. INTEGER_ARRAY arr
--

function rotateLeft(d, arr)
    local n = #arr
    d = d % n               -- in case d > n

    local result = {}

    -- Copy the elements from d+1 to n
    for i = d + 1, n do
        table.insert(result, arr[i])
    end

    -- Copy the first d elements
    for i = 1, d do
        table.insert(result, arr[i])
    end

    return result
end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local firstmultipleinput = {}
for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(firstmultipleinput, token)
end

local n = tonumber(firstmultipleinput[1]:match("^%s*(.-)%s*$"))

local d = tonumber(firstmultipleinput[2]:match("^%s*(.-)%s*$"))

local arr = {}

for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(arr, tonumber(token))
end

local result = rotateLeft(d, arr)

fptr:write(table.concat(result, " "))

fptr:write("\n")

fptr:close()

