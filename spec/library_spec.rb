require 'spec_helper'

RSpec.describe Library do
  describe '#initialize' do
    it 'exists' do
      library = Library.new('Hingham')

      expect(library).to be_a(Library)
      expect(library.name).to eq('Hingham')
      expect(library.books).to eq([])
      expect(library.authors).to eq([])
    end
  end

  describe '#add_author' do
    it '' do
      library = Library.new('Hingham')
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")
      
      expect(library.add_author(charlotte_bronte)).to eq(charlotte_bronte)
      expect(library.authors.first).to be_a(Author)
      expect(library.books).to eq([jane_eyre, villette])
      expect(library.books.include?('Clifford the Big Red Dog')).to eq(false)
    end
  end

  describe '#publication_time_frame_for' do
    it 'returns a hash' do
      library = Library.new('Hingham')
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")
      library.add_author(charlotte_bronte)

      expect(library.publication_time_frame_for(charlotte_bronte)).to be_a(Hash)
      expect(library.publication_date)
    end
  end
end