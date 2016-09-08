# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#     def self.yell_angrily(words)
#     puts words + "!!!" + " :("
#   end

#   def self.yell_happily(wordtoyell)
# 	puts wordtoyell + "!  AH YEah!"
# end

  
# end

module Shout
  # we'll put some methods here soon, but this code is fine for now!
    def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(wordtoyell)
	puts wordtoyell + "!  AH YEah!"
end

  
end

class AVB
	include Shout
end

class Notandrewperson
	include Shout
end

andrewvanbeek = AVB.new
andrewvanbeek.yell_angrily("Ah heck no broseph")

loser = Notandrewperson.new
loser.yell_happily("Andrew is the best!")

