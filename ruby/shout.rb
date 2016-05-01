#Defining module
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end


def self.yelling_happily(words)
    words + "$$$" + " :)"
  end

end

#Driver code

p Shout.yelling_happily("words of happiness")

p Shout.yell_angrily("words of anger")