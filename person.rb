class Person

    attr_reader :name, :books

    def initialize(options={})
      @name = options[:name]
      @books = {}
    end


    def pretty_string
      puts "#{name} has #{books.size} books borrowed from the library."
    end
end