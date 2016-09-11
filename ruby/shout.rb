# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#   # def self.yell_angrily(words)
#   #   words + "!!!" + " :("
#   # end

#   # def self.yell_happily(words)
#   # 	words + "!Oh ya!" + "!!!"
#   # end 
# end

# p Shout.yell_angrily("Oh no she didn't")

# p Shout.yell_happily("Hip hip cheerio")

module Shout
	def yell_angrily(words)
    words + "!!!" + " :("
  	end

  	def yell_happily(words)
  	words + "!Oh ya!" + "!!!"
  end 
end

class Toddler 
	include Shout 
end 

class Line_cook 
	include Shout
end 

toddler = Toddler.new
p toddler.yell_angrily("Goo goo ga ga")
p toddler.yell_happily("Milky")

line_cook = Line_cook.new
p line_cook.yell_angrily("Get me that pickle")
p line_cook.yell_happily("Day's over")
