def solve(a)
	tag = true
	j = 1
	while(j<=21 && tag)
		if(a[j-1] == a[j]&& a[j]==a[j+1]&&a[j+1]==a[j+2])
			j += 4
			next
		end
		tag = false
	end
 	return tag
end

tag = false
n = gets.split(' ').map(&:to_i)
a = n.dup
temp1 = a[1-1]
temp2 = a[3-1]
a[1-1] = a[24-1]
a[3-1] = a[22-1]
a[24-1] = a[9-1] 
a[22-1] = a[11-1]
a[9-1] = a[5-1]
a[11-1] = a[7-1]
a[5-1] = temp1
a[7-1] = temp2
if solve a
	tag = true
end
a = n.dup
temp1 = a[1-1]
temp2 = a[3-1]
a[1-1] = a[5-1]
a[3-1] = a[7-1]
a[5-1] = a[9-1] 
a[7-1] = a[11-1]
a[9-1] = a[24-1]
a[11-1] = a[22-1]
a[24-1] = temp1
a[22-1] = temp2
if solve a
	tag = true
end


a = n.dup
temp1 = a[2-1]
temp2 = a[4-1]
a[2-1] = a[23-1]
a[4-1] = a[21-1]
a[23-1] = a[10-1] 
a[21-1] = a[12-1]
a[10-1] = a[6-1]
a[12-1] = a[8-1]
a[6-1] = temp1
a[8-1] = temp2
if solve a
	tag = true
end
a = n.dup
temp1 = a[2-1]
temp2 = a[4-1]
a[2-1] = a[6-1]
a[4-1] = a[8-1]
a[6-1] = a[10-1] 
a[8-1] = a[12-1]
a[10-1] = a[23-1]
a[12-1] = a[21-1]
a[23-1] = temp1
a[21-1] = temp2
if solve a
	tag = true
end


a = n.dup
temp1 = a[5-1]
temp2 = a[6-1]
a[5-1] = a[13-1]
a[6-1] = a[14-1]
a[13-1] = a[21-1] 
a[14-1] = a[22-1]
a[21-1] = a[17-1]
a[22-1] = a[18-1]
a[17-1] = temp1
a[18-1] = temp2
if solve a
	tag = true
end
a = n.dup
temp1 = a[5-1]
temp2 = a[6-1]
a[5-1] = a[17-1]
a[6-1] = a[18-1]
a[17-1] = a[21-1] 
a[18-1] = a[22-1]
a[21-1] = a[13-1]
a[22-1] = a[14-1]
a[13-1] = temp1
a[14-1] = temp2
if solve a
	tag = true
end




a = n.dup
temp1 = a[7-1]
temp2 = a[8-1]
a[7-1] = a[15-1]
a[8-1] = a[16-1]
a[15-1] = a[23-1] 
a[16-1] = a[24-1]
a[23-1] = a[19-1]
a[24-1] = a[20-1]
a[19-1] = temp1
a[20-1] = temp2
if solve a
	tag = true
end
a = n.dup
temp1 = a[7-1]
temp2 = a[8-1]
a[7-1] = a[19-1]
a[8-1] = a[20-1]
a[19-1] = a[23-1] 
a[20-1] = a[24-1]
a[23-1] = a[15-1]
a[24-1] = a[16-1]
a[15-1] = temp1
a[16-1] = temp2
if solve a
	tag = true
end


a = n.dup
temp1 = a[18-1]
temp2 = a[20-1]
a[18-1] = a[1-1]
a[20-1] = a[2-1]
a[1-1] = a[15-1] 
a[2-1] = a[13-1]
a[13-1] = a[11-1]
a[15-1] = a[12-1]
a[12-1] = temp1
a[11-1] = temp2
if solve a
	tag = true
end
a = n.dup
temp1 = a[18-1]
temp2 = a[20-1]
a[18-1] = a[12-1]
a[20-1] = a[11-1]
a[11-1] = a[13-1] 
a[12-1] = a[15-1]
a[15-1] = a[1-1]
a[13-1] = a[2-1]
a[1-1] = temp1
a[2-1] = temp2
if solve a
	tag = true
end





a = n.dup
temp1 = a[17-1]
temp2 = a[19-1]
a[17-1] = a[10-1]
a[19-1] = a[9-1]
a[9-1] = a[14-1] 
a[10-1] = a[16-1]
a[16-1] = a[3-1]
a[14-1] = a[4-1]
a[3-1] = temp1
a[4-1] = temp2
if solve a
	tag = true
end
a = n.dup
temp1 = a[17-1]
temp2 = a[19-1]
a[17-1] = a[3-1]
a[19-1] = a[4-1]
a[3-1] = a[16-1] 
a[4-1] = a[14-1] 
a[14-1] = a[9-1]
a[16-1] = a[10-1] 
a[10-1] = temp1
a[9-1] = temp2
if solve a
	tag = true
end
if tag
	print('YES')
else
	print('NO')
end
