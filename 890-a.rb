n = gets.split(" ").map(&:to_i)
sum = 0
n.each { |a| sum+=a }
tag = false
for i in 0..3
	for j in (i+1)..4
		for k in (j+1)..5
			if 2*(n[j] + n[i] +n[k]) == sum
				tag = true
				break
			end
		end
	end
end

if tag
	print('YES')
else
	print('NO')
end