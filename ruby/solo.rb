#Create a class for Turtle.
class Turtle
	attr_reader :color
	attr_accessor :name :age 
#Give Turtle three attributes.
	def initialize(name, age)
#Attributes will be name, age, and color.
		@name = name
		@age = age
		@color = "green"
	end
#Give Turtle three methods.
#One method will be hide method where turtle hides in shell.
	def hide
		puts "*hides* Turtle is now hiding in his shell."
	end
#One method will be chew method where turtle chews food.
	def chew(food)
		puts "*chew* Turtle is now chewing a #{food}"
	end
#One method will be walk method where turtle takes one step.
	def walk(step = 0)
		step += 1
	end
end