def method
	puts "here's a block"
	yield("bla", "bla")
end
method { |x, y| puts "#{x}, #{y}"} 

boroughs = ["brooklyn", "queens", "manhattan", "bronx", "staten island"]
largest_cities = {:france => "paris", :germany => "berlin", :the_uk => "london", :sweden => "stockholm"}

boroughs.each do |borough|
  puts borough.upcase
end

p boroughs

boroughs.map! do |borough|
  borough.upcase
end

p boroughs

largest_cities.each do |country, city|
  puts "#{city.capitalize} is the largest city in #{country.capitalize}"
end

new_city_hash = {}

largest_cities.each do |country, city|
  new_city_hash[country.capitalize] = city.capitalize
end

p new_city_hash

boroughs.delete_if { |borough| borough.length == 6}
p boroughs

boroughs.keep_if { |borough| borough.length > 6 }
p boroughs

p boroughs.count {|borough| borough.length > 8}

p boroughs.drop_while {|borough| borough.length < 9}
p boroughs

largest_cities.delete_if {| country, city | city == "london" }
p largest_cities

largest_cities.keep_if {| country, city | country != :france }
p largest_cities

largest_cities.each_key {| country | p country.upcase }

