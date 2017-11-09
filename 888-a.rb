n= gets.to_i
a = gets.split(" ").map(&:to_i)
count = 0
for i in 1..n-2
	if (a[i]>a[i-1] && a[i]>a[i+1]) || (a[i]<a[i-1] && a[i]<a[i+1])
    	count  +=  1
    end
end
print(count)
