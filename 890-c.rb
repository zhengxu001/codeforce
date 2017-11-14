n = gets
a= gets.split(" ").map(&:to_i)
b = []
count = 1
a.each do |t|
	if b.include? t
		count +=1
	else
		b << t
	end
end
print(count)
