

def method(array, item)
array << item
end
p method(["Balls", "shorts"], "towels")

sports_array = []
p sports_array
sports_array << "basket ball"
p sports_array
sports_array += ["dart", "ball", "snooker", "bat"]
p sports_array
sports_array.delete_at(2)
p sports_array
sports_array.insert(2, "skis")
p sports_array
sports_array.shift
p sports_array
x = sports_array.include?("skis")
if x == true
puts "includes skis"
else puts "does not include skis"
end

teams = ["Giants", "A's", "Sharks"]
teams_and_sports = teams + sports_array
p teams_and_sports

