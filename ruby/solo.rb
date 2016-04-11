#Create a class for Turtle.
class Turtle
	attr_reader :size
	attr_accessor :name, :age, :color 
#Give Turtle three attributes.
	def initialize(name, age, color)
#Attributes will be name, age, and color.
		@name = name
		@age = age
		@color = color
		@size = "small"
	end
	def name=(new_name)
		@name = new_name
	end
#Give Turtle three methods.
#One method will be hide method where turtle hides in shell.
	def hide
		puts "*hides* #{@name} is now hiding in his shell."
	end
#One method will be chew method where turtle chews food.
	def chew(food)
		puts "*chew* #{@name} is now chewing a #{food}"
	end
#One method will be walk method where turtle takes one step.
	def walk
		puts "*step* #{@name} just took a step. Hooray!"
	end
end

# shell = Turtle.new("Michelangelo", 2)
# shell.hide
# shell.chew("cookie")
# shell.walk
puts "Would you like to adopt a Turtle? (Y/N)"
answer = ""
turtles = []

until answer == "N"
	answer = gets.chomp.upcase
	if answer == "N"
		turtles.each do |name, age, color|
			puts "You have a #{color} turtle named #{name} who is #{age} years old!"
		end
		break
	elsif answer == "Y"
		turtle = Turtle.new(@name, @age, @color)
		puts "What would you like to name your Turtle?"
		name = gets.chomp.capitalize
		@name = name
		puts "How old would you like your Turtle to be?"
		age = gets.chomp.to_i
		@age = age
		puts "What color do you want your Turtle to be?"
		color = gets.chomp.to_sym
		@color = color
		turtles << "#{@name} #{@age} #{@color}".split(" ")
		puts "Your turtle's name is #{@name} and it is #{@color} and #{@age} years old"
	else
		puts "Something is wrong!"
	end
	puts "Would you like to adopt another Turtle? (Y/N)"
end