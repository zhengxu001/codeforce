n= gets.to_i
a = gets.split(" ").map(&:to_i)

k = a.dup
flag = false
count = 0
while(a.size > 0)
	if a.count(1) != 0
		flag = true
		break
	end
	b = []
	for i in 0..(a.size-2)
		b << (a[i].gcd a[i+1])
	end
	a = b
	count += 1
end
if flag
	if k.count(1) > 1
		print(n - k.count(1) + count)
	else
		print(n - 1 + count)
	end
else
	print('-1')
end


