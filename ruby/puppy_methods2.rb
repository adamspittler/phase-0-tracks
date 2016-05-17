class Puppy
  
  def initialize
    p "Initializing new puppy instance ..."
  end

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

class Book
  
  def initialize
    p "this is a book"
  end

  def open
    p "book is now open"
  end

  def read(number_of_pages)
    p "you have read #{number_of_pages} pages"
  end
end

lolita = Book.new
lolita.open
lolita.read(36)

bookshelf = []
50.times do book = Book.new
  bookshelf << book
end
p bookshelf

bookshelf.each do |book|
book.read(rand(11))
end

