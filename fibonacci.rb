def fibs(n)
	iterator = 2
	num1, num2 = 0, 1
	while iterator <= n
		result = num1 + num2
		num1 = num2
		num2 = result
		iterator += 1
	end
	result
end

def fibs_rec(n)
	return n if n == 0 || n == 1
	return 0 if n < 0
	fibs_rec(n - 1) + fibs_rec(n - 2)
end

puts fibs_rec(5)

=begin
n = 6
fibs_rec(n - 1)	+ fibs_rec(n - 2)

fibs_rec(6 - 1)
-> fibs_rec(5)
	- fibs_rec(5-1) + fibs_rec(5-2)
		-> fibs_rec()	
=end