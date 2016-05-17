class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
  end
  def gender
    @gender
  end
  def age
    @age 
  end

  def ethnicity
    @ethnicity
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end


  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!" 
  end

end
#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("oreo")

#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "none"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "klingon"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
#end
#p santas

santa = Santa.new("male", "pink")

p santa.get_mad_at("Dasher")
p santa.celebrate_birthday
p santa.celebrate_birthday
p santa.gender=("female")
p santa.age
p santa.gender