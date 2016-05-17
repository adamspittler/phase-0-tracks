# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split input string into an array.
  # Define hash
  # use block to iterate through array adding to array as key and 1   as the value
  # print the list to the console
  # output: A hash with a key of the item and a value of the         quantity. 

# Method to add an item to a list
# input: Hash name item name and optional quantity
# steps: Add key and value to hash.
# output: Updated hash

# Method to remove an item from the list
# input: Hash name, key name
# steps: Delete key
# output: Updated hash

# Method to update the quantity of an item
# input: Hash name, key name, new value
# steps:  Add key with it's new value to the hash.
# output: Updated hash

# Method to print a list and make it look pretty
# input: The Hash
# steps: Iterate through the hash, print appropriate text with key and value.
# output:  a list as a string.

def create_list(string)
  string = string.split(' ')
  list = {}
  string.each { | item | list[item] = 1}
  list
end

def add_to_list!(hash_name, item, qty)
  hash_name[item] = qty
  hash_name
end

def remove_from_list!(hash_name, item)
  hash_name.delete(item)
  hash_name
end

def update_qty!(hash_name, item, qty)
  hash_name[item] = qty
  hash_name
end

def print_list(hash_name)
  hash_name.each{| key, value | puts "You have #{value} #{key} "} 
end

new_list = create_list("carrorts apples")
puts new_list
add_to_list!(new_list, "Cereal", 2)
puts new_list
remove_from_list!(new_list, "carrorts")
puts new_list
update_qty!(new_list, "apples", 5)
puts new_list
print_list(new_list)
puts

# Create a new list
# Add the following items to your list
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?

test_list = create_list("lemonade tomatoes onions ice_cream")
puts test_list
add_to_list!(test_list, "lemonade", 2)
puts test_list
add_to_list!(test_list, "tomatoes", 3)
puts test_list
add_to_list!(test_list, "onions", 4)
puts test_list
add_to_list!(test_list, "ice_cream", 4)
remove_from_list!(test_list, "lemonade")
update_qty!(test_list, "ice_cream", 1)
puts test_list
print_list(test_list)