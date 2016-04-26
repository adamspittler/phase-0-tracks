
class Puppy 		# Defines Puppy as a class.
end


Puppy.methods		# Declares the methods that can be called on the "Puppy" class. 


dutchess = Puppy.new		# Creates instances of the puppy class.
fido = Puppy.new
spot = Puppy.new 		


p spot.class		# retuns the class (Puppy) that spot is an instance of		


p dutchess == fido		# returns that the two instances of the Puppy class; "duchess and fido"	are not the same.	

p fido.instance_of?(Array)		#Determines that fido is not an Array.

# p spot.play_dead 		# Results in error, undefined method.