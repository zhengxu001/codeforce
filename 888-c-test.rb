str = gets.split("")
str.pop
n = str.size
max={}

for c in 'a'..'z'
	str2=str.dup
	temp1=0
	while str2.include? c
		temp=0
		k = str2.index(c)
		str2 -= str2[temp..k]
		temp += k
		k = str2.index(c)
		p k
		temp += k
		if temp>temp1
			temp1 = temp
		end
	end
	max[c] = temp1
end
p max
		