n = gets.to_i
i=1
a = ''
str = []
tag = true
for i in 0..(n-1)
	str[i] = gets
	str[i].slice!(str[i].size-1,str[i].size)
end
str.sort!
str.each do |b|
	if b.size != b.split(//).uniq.size || a.size != a.split(//).uniq.size
		tag = false
		break
	end
	if (a.delete b).size == a.size - b.size
		next
	end
	if (a.delete b).size == 0
		a = b.dup
		next
	end
	if b[0] == a[-1]
		b = b[1..-1]
		c = a.delete b
		if  c.size == a.size
			a = a+b
			next
		else
			tag = false
			break
		end
	elsif a[0] == b[-1]
		a = a[1..-1]
		c = a.delete b
		if  c.size == a.size
			a = b+a
			next
		else
			tag = false
			break
		end
	end

	
	if (a.delete b).size == a.size
		if a < b
			a = a+b 
		else
			a = b+a 
		end
		next
	else
		tag = false
		break
	end
end

if tag
	print(a)
else
	print('NO')
end

