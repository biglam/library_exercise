class Person

    attr_reader :name, :books

    def initialize(options={})
      @name = options[:name]
      @books = {}
    end

end