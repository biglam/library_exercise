def menu
  puts `clear`
  puts "*** Hard Copy Rental - CodeClan Library ***"
  puts
  puts
  puts "1. Create Book"
  puts "2. Create Person"
  puts "3. List all books"
  puts "4. List all people"
  puts "5. Lend Book"
  puts "6. Return Book"
  puts "7. List Borrowed Books"
  puts 
  puts "0. Quit"
  puts
  puts
  print "--> "
  gets.to_i
end

def create_book(library) #ONLY creates new book (doesn't care what happens after that)
  print "Title: "
  title = gets.chomp
  print "Genre: "
  genre = gets.chomp
  #creates book with values just entered
  newbook = Book.new(title: title, genre: genre)
  #asks library to add book (instead of shoveling in)
  library.add_book(newbook)
end

def list_books(library)
  #tell library to display its books (doesn't worry about how)
  puts library.list_books
end
