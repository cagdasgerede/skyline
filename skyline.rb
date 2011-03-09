def skyline map
	x1 = map[:x1]
	x2 = map[:x2]
	y2 = map[:y2]

	[[x1,0],[x1,y2],[x2,y2],[x2,0]]
end

def rectangle arr
	(arr.length - 1).times do |i|
		puts "#{arr[i][0]}, #{arr[i][1]} - #{arr[i+1][0]}, #{arr[i+1][1]}"
	end
end


res = skyline :x1=>5, :x2=>10, :y2=>20
res.concat  skyline :x1=>30, :x2=>40, :y2 => 15
res.unshift [0,0]
#puts res.inspect
rectangle res
