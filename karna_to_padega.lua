-- lets write my fav , prime numbers
primes = {}


function primes()
    for i=3,100000000000000 do
        is_prime(i)
    end
end
    

function is_prime(n)

    for i=3,math.sqrt(n) do
        if n/i == 0 then
            return "not_prime"
        end
        -- print("iteratio "..i)
    end
    return "is_prime"

end

-- print(is_prime(117))

primes()


