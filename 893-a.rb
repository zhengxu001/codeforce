n = gets.to_i
temp = gets.to_i
a = []
a[0] = 2 if temp == 1
a[0] = 1 if temp == 2
a[1] = temp
flag = true
flag = false if temp==3
ty = [1,2,3]
ty.delete a[0]
for i in 2..n
	a[i] = gets.to_i
	flag = false if !ty.include? a[i]
	ty.delete a[i]
	tyr = ty.first
	ty = [1,2,3]
	ty.delete tyr
end
if temp == 3 || flag == false
	print('NO')
else
	print("YES")
end



