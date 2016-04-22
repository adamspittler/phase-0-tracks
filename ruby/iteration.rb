array = ['a', 'b', 'c']

def block_take (x)
	puts x
	3.times { yield }
	puts x.upcase
end
block_take ("bla bla") {puts array} 




states = ['california', 'nevada', 'utah']

state_capitals = {:rhode_island => "providence", :oregon => "salem", :texas => "austin", :arizona => "phoenix"}

puts "original data:"
p states 
states.each do |state|
	puts state.upcase
end
puts "after .each"
p states


states.map! do |state|
	puts state
	state.reverse
end
puts "after .map"
p states

p state_capitals

state_capitals.each do |state, capital|
	puts "#{capital} is the capital of #{state}"
end



numbers = [ 97, 400, 75, 1023, 2 ]
p numbers
p numbers.sort 




people ={"bush" => "old",
    "clinton" => "old",
    "child" => "young"}
    
people.delete_if{|person, age| person.length < 5
}
    
p people