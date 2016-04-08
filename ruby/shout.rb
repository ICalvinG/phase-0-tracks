module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end
  def yelling_happily
  	puts "I am so happy!"
  end
end

class Mother
	include Shout
end

class Teacher
	include Shout
end

mother = Mother.new
mother.yelling_happily

teacher = Teacher.new
teacher.yell_angrily("You're driving me crazy")