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
      library.add_author(charlotte_bronte)

      expect(library.authors.first).to be_a(Author)
      expect(library.books).to eq([jane_eyre, villette])
    end
  end
end