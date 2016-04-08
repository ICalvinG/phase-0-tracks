module Shout
  def self.yell_angrily(words)
    puts words + "!!!" + " :("
  end
  def self.yelling_happily
  	puts "I am so happy!"
  end
end

Shout.yell_angrily("Blah")
Shout.yelling_happily