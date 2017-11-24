n= gets.to_i
a = [1, 6, 28, 120, 496, 2016, 8128, 32640, 130816]
a.reverse!
num = 1
a.each do |temp|
    if n%temp == 0
		num = temp
		break
	end
end

print(num)