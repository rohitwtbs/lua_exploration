

function fib(n)
	if n==0 then
		return 1
	else
		return n*fib(n-1)
	end
end

print("enter a number")
a = io.read("*n")
print(fib(a))
