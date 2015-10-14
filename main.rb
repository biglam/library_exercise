require 'pry-byebug'
require_relative 'library'
require_relative 'person'
require_relative 'book'

require_relative 'methods'

#create library
my_library = Library.new name: "CodeClan Library"

response = menu

my_library.add_person(Person.new(name: 'Fred'))
my_library.add_person(Person.new(name: 'Wilma'))
my_library.add_person(Person.new(name: 'Barney'))
my_library.add_person(Person.new(name: 'Betty'))
my_library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
my_library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
my_library.add_book(Book.new(title: "Histories", genre: "History"))
my_library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
my_library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))

while response != 0
  case response
    when 1
      create_book(my_library)
    when 2
      create_person(my_library)
    when 3
      list_books(my_library)
    when 4
      list_people(my_library)
    when 5
      lend_book(my_library)
    when 6
      return_book(my_library)
    when 7
      # TODO: List borrowed books
    else
      puts "Invalid option"
  end
  puts "Press enter to continue"
  gets

  response = menu
end




binding.pry;''