def calculator int1,operator,int2
	
 int1.to_i.send(operator, int2.to_i)
end



structure = {}

puts "please enter your calculation and press enter or type done."

i = 0

xx = gets.chomp

x



if xx == "done"
	xx = nil
	else xx = xx
end	
until xx == "done"
	calcu = xx
	xx = xx.split(' ')
	
	result = calculator xx[0], xx[1], xx[2]
	p result
	puts "please enter your calculation and press enter or type done."
	structure.merge! calcu =>result
	i = i + 1

	xx = gets.chomp
end

structure.each do |calcu, result |
puts "#{i} calculations performed"
puts "#{calcu} is #{result}."
end