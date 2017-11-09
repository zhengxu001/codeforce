n= gets.to_i
a = gets.split("")
a.pop
a.each_index do |i|
	move = a[i]
	if move == 'L'
		k = a.index 'R'
		if k
			a[i] = 0
			a[k] = 0
		end
	end
	if move == 'R'
		k = a.index 'L'
		if k
			a[i] = 0
			a[k] = 0
		end
	end
	if move == 'U'
		k = a.index 'D'
		if k
			a[i] = 0
			a[k] = 0
		end
	end
	if move == 'D'
		k = a.index 'U'
		if k
			a[i] = 0
			a[k] = 0
		end
	end
end
count = 0
a.each do |move|
	count +=1 if move ==0
end
print(count)
