n= gets.to_i

remaining = gets.split(" ").map(&:to_i).inject(0, :+)
capacities = gets.split(" ").map(&:to_i)
max1 = capacities.max
capacities.delete_at capacities.index(max1)
max2 = capacities.max

if max1+max2 >= remaining
	print('YES')
else
	print('NO')
end
