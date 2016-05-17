class Santa
  attr_accessor :gender, :age, :ethnicity
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
    puts "a #{@age} year old #{@gender} #{@ethnicity} santa was created." 
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
#DRIVER CODE
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "none"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "klingon"]
50.times do 
Santa.new(example_genders.sample, example_ethnicities.sample)
end
