class Library
  attr_reader :name, 
              :books, 
              :authors, 
              :publication_dates

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @publication_dates = {}
  end

  def add_author(author)
    author.books.each do |book|
      @books << book
    end
    @authors << author
    author
  end

  def publication_time_frame_for(author)
    dates_of_books = []
    author.books map do |book|
      dates_of_books << book.publication_year
    end
    @publication_dates[:start] = dates_of_books.min 
    @publication_dates[:end] = dates_of_books.max

  end
end
