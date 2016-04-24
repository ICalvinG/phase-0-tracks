# Manga Log Application

# require gem
require 'sqlite3'

# Create the SQLite3 database
manga_db = SQLite3::Database.new("manga_read.db")
manga_db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS manga(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    volumes INT,
    read BOOLEAN,
    rating INT
  )
SQL

# Create a table for all the read manga
manga_db.execute(create_table_cmd)

# Create a method to add a manga
def add_manga(db, name, volumes, read, rating)
	db.execute("INSERT INTO manga (name, volumes, read, rating) VALUES (?, ?, ?, ?)", [name, volumes, read, rating])
end
# Create a method to delete a manga
def delete_manga(db, id)
	db.execute("DELETE FROM manga WHERE id=?", [id])
end
# Create a method to update name
def update_name(db, name)
	db.execute("UPDATE manga SET name=? WHERE id=?", [name])
end
# Create a method to update volumes
def update_volumes(db, name, volumes)
	db.execute("UPDATE manga SET volumes=? WHERE id=?", [volumes, name])
end
# Create a method to update read
def update_read(db, name, read)
	db.execute("UPDATE manga SET read=? WHERE id=?", [read, name])
end
# Create a method to update rating
def update_rating(db, name, rating)
	db.execute("UPDATE manga SET rating=? WHERE id=?", [rating, name])
end
# Create a method to print current log to the user
def print_manga_log(db)
	manga_log = db.execute("SELECT * FROM manga")
	manga_log.each do |manga|
		puts manga_log
	end
end

# Driver code to test methods
# add_manga(manga_db, "One Piece", 80, "true", 10)
# add_manga(manga_db, "Claymore", 27, "true", 8)
# delete_manga(manga_db, "Claymore")
# delete_manga(manga_db, "One Piece")

# Create user input loop
puts "Hello and welcome to your very own Manga Log database. Here you will be able to add a manga that you have read with it's amount of volumes, if you finished reading, and what your rating will be. Here is your current Manga Log:"
print_manga_log(manga_db)
loop do
puts "Would you like to add, update or delete your Manga Log? Type in done if finished."
answer = gets.chomp.downcase

	break if answer == "done"

	if answer == "add"
		puts "What is the name of the manga?"
		name = gets.chomp
		puts "How many volumes are in this manga?"
		volumes = gets.chomp.to_i
		puts "Have you finished reading this manga?"
		finished = gets.chomp.downcase
			if finished == "no"
				read = "false"
			else
				read = "true"
			end
		puts "What is your rating for this manga (Lowest 1-10 Highest)?"
		rating = gets.chomp.to_i
		add_manga(manga_db, name, volumes, read, rating)
	elsif answer == "update"
		puts "What manga would you like to update? (Enter id number)"
		id = gets.chomp.to_i
		puts "What would you like to update about this manga (name, volumes, read, rating)?"
		input = gets.chomp.downcase
			if input == "name"
				puts "What is the new name for this manga?"
				name = gets.chomp.downcase
				update_name(manga_db, name)
			elsif input == "volumes"
				puts "What is the new number of volumes for this manga?"
				volumes = gets.chomp.to_i
				update_volumes(manga_db, name, volumes)
			elsif input == "read"
				puts "Have you finished this manga?"
				finished = gets.chomp.downcase
					if finished == "no"
						read = "false"
					else
						read = "true"
					end
				update_read(manga_db, name, read)
			elsif input == "rating"
				puts "What is the new rating for this manga?"
				rating = gets.chomp.to_i
				update_rating(manga_db, name, rating)
			end
	elsif answer == "delete"
		puts "What manga would you like to delete? (Enter id number)"
		id = gets.chomp.to_i
		delete_manga(manga_db, id) 
	end
	puts "Here is your current Manga Log:"
	print_manga_log(manga_db)
end