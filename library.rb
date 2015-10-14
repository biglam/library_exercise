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

  def list_books
    if books.empty?
      "Soz, no books here"
    else
      books.map do |key, book_object|
        #book_object.title - library shouldn't know what a book looks like so...
        book_object.pretty_string
      end.join("\n")
      #books.map { |key, book_object| book.pretty_string }.join(\n)
    end
  end

end