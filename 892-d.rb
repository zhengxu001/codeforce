n= gets.to_i
a = gets.split(" ").map(&:to_i)
for i in 1..n-1
	print(a[i], ' ')
end
if n>1
	print(a[0])
else
	print(-1)
end
