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
# Create a method to update volumes
def update_volumes(db, name, volumes)
	db.execute("UPDATE manga SET volumes=? WHERE name=?", [volumes, name])
end