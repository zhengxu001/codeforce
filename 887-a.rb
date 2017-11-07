n= gets
while(n.size > 1)
    n=n[1..-1] if n[0] == '0'
    break if n[0]== '1'
end
if n.count('0')>=6
    print('yes')
else
	print('no')
end
