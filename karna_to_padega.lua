-- lets write my fav , prime numbers
primes = {}


function primes()

end
    

function is_prime(n)

    for i=3,math.sqrt(n) do
        if n/i == 0 then
            return "not_prime"
        end
        print("iteratio "..i)
    end

end

print(is_prime(117))


