class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(woof_times)
    p "woof " * woof_times
  end
  def roll_over
    p "rolls over!!"
  end
  def dog_years(age)
    dog_years = age * 7
  end
  def play_dead
    p "plays dead"
  end
end
puppy = Puppy.new
p puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
p puppy.dog_years(4)
puppy.play_dead