class Library
  attr_reader :name, :people, :books

  def initialize(options={})
    @name = options[:name]
    @people = {}
    @books = {}
  end

end