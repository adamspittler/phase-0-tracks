def method
	puts "here's a block"
	yield("bla", "bla")
end
method { |x, y| puts "#{x}, #{y}"} 