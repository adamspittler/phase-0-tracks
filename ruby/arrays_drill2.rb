new_array = []
p new_array

new_array = new_array + ["item1", "item2", "item3","item4", true]
p new_array

new_array.delete_at(2)
p new_array

new_array.insert(2, "new item")
p new_array

new_array.delete("item1")
p new_array

puts " array includes item 2 = #{new_array.include?("item2")}"

second_array = ["chris", "adam", "brooklyn", false]
p second_array

combined_arrays = new_array + second_array
p combined_arrays

