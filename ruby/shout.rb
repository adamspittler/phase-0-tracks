##Defining module
#module Shout
#
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#
#def self.yelling_happily(words)
#    words + "$$$" + " :)"
#  end
#
#end
#
##Driver code
#
#p Shout.yelling_happily("words of happiness")
#
#p Shout.yell_angrily("words of anger")

module Shout

  def yell_angrily(words)
    words.upcase + "!!!!!!" + " :("
  end


def yell_happily(words)
    words.upcase + "$$$" + " :)  :)"
  end

end

class Gym_teacher
  include Shout
end

class Drunk_person
  include Shout
end

larry = Gym_teacher.new
p larry.yell_angrily("there's no crying in baseball")
p larry.yell_happily("we win, we win")

vikki = Drunk_person.new
p vikki.yell_happily("i'm having the best time, let's go to another bar")
p vikki.yell_angrily("what do you mean i'm too drunk to get in")