n, t= gets.split(" ").map(&:to_i)
day = 1
a = gets.split(" ").map(&:to_i)
a.each do |work_time|
  t = t-86400+work_time
  day+=1 if t>0
end
print(day)

