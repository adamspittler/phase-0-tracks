
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

def formatter(input)
  input = input.upcase.downcase.split(' ')
  input.map! do | word |
    word.capitalize + " "
  end
  input.join.chop
end

# add_song(db, 'Famous blue raincoat', 'Leonard Cohen', 10, 45)
# delete_song_by_name(db, "Horses")
# delete_song_by_artist(db, "Brian Eno")

loop do 
  add_item = "Yes"
  puts "Here is your database."
  print_list(db)
  puts "Would you like to add a song to the database?"
  add_item = formatter(gets.chomp)
  break if add_item != "Yes"
  puts "Enter title"
  name = formatter(gets.chomp)
  puts "Enter artist"
  artist = formatter(gets.chomp)
  puts "Enter rating"
  rating = gets.chomp
  puts "Enter BPM"
  bpm = gets.chomp
  add_song(db, name, artist, rating, bpm)
  end

loop do
  delete_item = "Yes"
  puts "Here is your database."
  print_list(db)
  puts "Would you like to delete something?"
  delete_item = formatter(gets.chomp)
  break if delete_item != "Yes"
  puts "Enter title or artist to delete."
  to_delete = formatter(gets.chomp)
  delete_song_by_name(db, to_delete)
  delete_song_by_artist(db, to_delete)
end

puts "Here is your database."
print_list(db)
