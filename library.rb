class Library
  attr_reader :name, :people, :books

  def initialize(options={})
    @name = options[:name]
    @people = {}
    @books = {}
  end

  def add_book(book)
    #adds book to hash with title as key
    books[book.title] = book #no @ cos accessing through :books method attr
  end

end