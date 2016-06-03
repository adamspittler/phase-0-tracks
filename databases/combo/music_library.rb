
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("library.db")

# create table (if it's not there already)
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS songs(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    artist VARCHAR(255),
    rating INT,
    bpm INT
  )
SQL

db.execute(create_table_cmd)


def add_song(db, name, artist, rating, bpm)
  db.execute("INSERT INTO songs (name, artist, rating, bpm) VALUES (?, ?, ?, ?)", [name, artist, rating, bpm])
end

def delete_song_by_name(db, name)
  db.execute("DELETE FROM songs WHERE name=(?)", [name])
end 

def delete_song_by_artist(db, artist)
  db.execute("DELETE FROM songs WHERE artist=(?)", [artist])
end 

def print_list(db)
  songs = db.execute("SELECT * FROM songs")
  songs.each do |song|
    p "#{song[1]} by #{song[2]} has a rating of #{song[3]}"
  end
end

# add_song(db, 'Famous blue raincoat', 'Leonard Cohen', 10, 45)
# delete_song_by_name(db, "Horses")
# delete_song_by_artist(db, "Brian Eno")

loop do 
  another_song = "yes"
  puts "Add song to database"
  puts "Enter title"
  name = gets.chomp
  puts "Enter artist"
  artist = gets.chomp
  puts "Enter rating"
  rating = gets.chomp
  puts "Enter BPM"
  bpm = gets.chomp
  add_song(db, name, artist, rating, bpm)
  puts "Would you like to add another song?"
  another_song = gets.chomp.upcase.downcase
  break if another_song != "yes"
end

 



print_list(db)
