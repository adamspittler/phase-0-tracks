#module Shout2
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#    words + "!!!" + " :)"
#  end
#end 
#
#p Shout2.yell_angrily("hey")
#p Shout2.yell_happily("hey")

module Shout2
  def yell_angrily(words)
    words.upcase + "!!!" + " :("
  end

  def yell_drunkenly(words)
    words.swapcase + "!*" 
  end
end 

class Old_man
  include Shout2
end

class Punk_singer
  include Shout2
end

man = Old_man.new
p man.yell_angrily("get off my lawn")

punk = Punk_singer.new
p punk.yell_drunkenly("Bla Bla bBa")