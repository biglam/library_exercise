class Book

  attr_reader :title, :genre

  def initialize(options={})
    @title = options[:title]
    @genre = options[:genre]
  end

end