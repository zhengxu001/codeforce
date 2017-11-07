n = gets.to_i
a = ''
i = 0
while(i<n)
	a += gets.gsub(' ', '').gsub("\n", '')
	i+=1
end
j = 1
tag = true
mm = a.size
while tag
	b = a.dup
	b=b.split('')
	k = j.to_s.reverse
	k.split("").each do |c|
		if b.include? c
			kk=b.index(c)/6
			kk = 6*kk
			for i in kk..kk+5
			  b.delete_at i
			end
		else
        p c
                        p b
			tag = false
		end
	end
	j+=1
end
print j-2

