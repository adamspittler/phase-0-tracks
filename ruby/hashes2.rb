# Declare empty hash called client info.
# Prompt user for input on all keys.
# define user input as variable. 
# add input variable to hash as value of appropriate key. 
# prompt user to optionally updae a value. if desired propt user to enter key to change value.
# set user input as a variable. add that variable as value to chosen key.

client_info = {}

# reguest client name
puts "client name?"
name = gets.chomp
client_info[:age] = name

# reguest client age
puts "client age?"
age = gets.chomp
client_info[:age] = age

# reguest client number of children
puts "client number of children?"
children_number = gets.chomp
client_info[:children_number] = children_number

# reguest client decor theme
puts "client decor theme?"
decor_theme = gets.chomp
client_info[:decor_theme] = decor_theme

# reguest client employeed status
puts "client employed?"
client_employed = gets.chomp
client_info[:client_employed] = client_employed

# Gives user a chance to update a key value, prints list of keys.
puts "type one of the following to update or type none."
p client_info.keys
# turn user input into symbol"
edit_key = gets.chomp.to_sym

if edit_key == :none
  p client_info
else
  puts "whats the new value"
  new_value = gets.chomp
  # if input is not "none" (which has been converted to a symbol), add the new value to the hash.
  client_info[edit_key] = new_value
  p client_info
end
