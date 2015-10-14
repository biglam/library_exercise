require 'pry-byebug'
require_relative 'library'
require_relative 'person'
require_relative 'book'

require_relative 'methods'

#create library
my_library = Library.new name: "CodeClan Library"

response = menu

while response != 0
  case response
    when 1
      create_book(my_library)
    when 2
      # TODO: create_person(library)
    when 3
      # TODO: list all books
    when 4
      # TODO: List all people
    when 5
      # TODO: Lend book
    when 6
      # TODO: Return book
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