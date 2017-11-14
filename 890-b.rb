n = gets.to_i
t= gets.split(" ").map(&:to_i)
t = t.reverse
# b = t.uniq
neset = 0
visited = []
t.each do |v|
	if !(visited.include? v)
		neset = v
		visited << v
	end
	t = t-visited
	# if visited.size == b.size
	# 	break
	# end 
end

print(neset)



