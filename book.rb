class Book

  attr_reader :title, :genre

  def initialize(options={})
    @title = options[:title]
    @genre = options[:genre]
  end

  def pretty_string
    "#{title} - #{genre}" #no book.title since its in itself
  end

end