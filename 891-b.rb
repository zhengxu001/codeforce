n= gets.to_i
l = gets.split(" ").map(&:to_i)
k = l.dup
for i in 1..(n-1)
	right = i-l[i]
	right = 0 if right<0
	for c in right..i-1
		k[c] = -1
	end
end
print(k.size - k.count(-1))
