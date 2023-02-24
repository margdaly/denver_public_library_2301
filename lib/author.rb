class Author
  attr_reader :first_name, :last_name, :books

  def initialize(author_details)
    @first_name = author_details[:first_name]
    @last_name = author_details[:last_name]
    @books = []
  end

  def name
    name = []
    name << @first_name << @last_name
    name.join(' ')
  end
end
