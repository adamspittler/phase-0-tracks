# Music Library Creator

# require gems
require 'sqlite3'

# create SQLite3 Database
db = SQLite3::Database.new("library.db")


# fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS music(
    id INTEGER PRIMARY KEY,
    artist VARCHAR(255),
    song VARCHAR(255),
    rating INT,
    explicit_lyrics BOOLEAN,
    user_id INT,
    platform_id INT
  )
SQL

create_users_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    user_name VARCHAR(255)
  )
SQL

create_platform_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS platform(
    id INTEGER PRIMARY KEY,
    platform_name VARCHAR(255)
  )
SQL

# create music table, if it doesn't exist already
db.execute(create_table_cmd)
db.execute(create_users_table_cmd)
db.execute(create_platform_table_cmd)

# add a test artist, song, etc
# db.execute("INSERT INTO music (artist, song, rating, explicit_lyrics, user_id, platform_id) VALUES ('Ghostface Killah', 'The Champ', 4, 'true', 1, 1)")

# add a test user
# db.execute("INSERT INTO users (user_name) VALUES ('Chris')")

# add a test platform
# db.execute("INSERT INTO platform (platform_name) VALUES ('iTunes')")

# write a method to add a song
def add_song(db, artist, song, rating, explicit_lyrics, user_name, platform_name)
  db.execute("INSERT INTO music (artist, song, rating, explicit_lyrics, user_id, platform_id) VALUES (?, ?, ?, ?, ?, ?)", [artist, song, rating, explicit_lyrics, user_name, platform_name])
end

# write a method to delete a song
def delete_song(db, song)
  db.execute("DELETE FROM music WHERE song=(?)", [song])
end

# write a method to update a rating
def update_rating(db, rating, song)
  db.execute("UPDATE music SET rating=(?) WHERE song=(?)", [rating, song])
end

# write a method that displays library by rating
def display_by_rating(db)
  db.execute("SELECT * FROM music ORDER BY rating DESC")
end

#write a method that displays music by artist
def display_by_artist(db)
  db.execute("SELECT * FROM music ORDER BY artist ASC")
end

# write a method to print the whole music library
def print_library(db)
  music_library = db.execute("SELECT * FROM music")
  music_library.each do |music|
    p "#{music[1]} - #{music[2]}, rating = #{music[3]} stars, explicit lyrics present: #{music[4]}, played by user: #{music[5]} on platform: #{music[6]}"
  end
end

# write a method to add a user to the database
def add_user(db, user_name)
  db.execute("INSERT INTO users (user_name) VALUES (?)," [user_name])
end

 # write a method that adds a platform to the database
 def add_platform(db, platform_name)
   db.execute("INSERT INTO platform (platform_name) VALUES (?)," [platform_name])
 end

 
# write a method that joins the three tables
def join_tables(db)
  db.execute("SELECT users.user_name, platform.platform_name, music.artist, music.song, music.explicit_lyrics FROM music JOIN users ON music.user_id = users.id JOIN platform ON music.platform_id = platform.id")
end


# add_platform(db, "itunes")


 # USER INTERFACE
 loop do
 puts "Greetings, welcome to your music library creator."
 puts "We're going to begin building your music library."
 puts "To begin, press any key or type 'done' if/when finished"
 user_response = gets.chomp
 break if user_response == 'done'
 puts "Please enter your name:"
 user_name = gets.chomp
 puts "Please enter an artist name:"
 artist = gets.chomp
 puts "Please enter the song title by said artist:"
 song = gets.chomp
 puts "Please enter a rating for the song on a scale of 1-5:"
 rating = gets.chomp
 puts "Does this song have explicit lyrics? (true/false)"
 explicit_lyrics = gets.chomp
   until explicit_lyrics == "true" || explicit_lyrics == "false"
     puts "Incorrect answer choice"
     puts "Please type 'true' or 'false'"
     explicit_lyrics = gets.chomp
   end
 puts "Please enter the platform you'd like to use to play your music:"
 platform_name = gets.chomp
   add_song(db, artist, song, rating, explicit_lyrics, user_name, platform_name)
 end
 
 
 print_library(db)