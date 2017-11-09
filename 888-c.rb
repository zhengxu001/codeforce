# str = gets.split("")
# str.pop
n = str.size
max = n/2+1
min = 1
while min<=max
	mid = (min+max)/2
	temp0=str[0..(mid-1)]
	flag = true
	i = 1
	while(i <= (n-mid))
		temp1=str[i..(i+mid-1)]
		temp0 = temp1&temp0
		if temp0==[]
			flag = false
			break
		end
		i += mid/3-1>0&&i+mid/3-1<=n-mid ? (mid/3-1) : 1
	end
	if flag == true
		max = mid-1
	else
		min = mid+1
	end
end
print(min)
		
