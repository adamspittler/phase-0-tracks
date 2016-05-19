module Shout2
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end 

p Shout2.yell_angrily("hey")
p Shout2.yell_happily("hey")
