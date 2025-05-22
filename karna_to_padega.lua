-- lets write my fav , prime numbers
primes = {}


function primes()
    for i=3,100000000000000 do
        print(is_prime(i))
    end
end
    

function is_prime(n)
    print('calculating for '..n)
    for i=2,math.sqrt(n) do
        if n/i == 0 then
            return "not_prime"
        end
        -- print("iteratio "..i)
    end
    -- return "is_prime"

end

-- print(is_prime(117))

print(primes())


