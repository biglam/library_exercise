class Person

    attr_reader :name, :books

    def initialize(options={})
      @name = options[:name]
      @books = {}
    end

    def pretty_string
      puts "#{name} has #{books.size} book#{'s' unless books.size==1} borrowed from the library."
    end

    def borrow(book)
      books[book.title] = book
    end

    def books_borrowed
      books.map do |key, book_object|
        #book_object.title - library shouldn't know what a book looks like so...
        book_object.pretty_string
      end
    end


end