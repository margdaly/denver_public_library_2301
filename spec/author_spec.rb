require 'spec_helper'

RSpec.describe Author do
  describe '#initialize' do
    it 'exists' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte).to be_a(Author)
      expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    end
  end

  describe '#write' do
    it 'starts with having no books written' do 
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte.books).to eq([])
    end

    it 'can write books' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      expect(jane_eyre).to be_an_instance_of(Book)
      expect(jane_eyre.title).to eq("Jane Eyre")
      expect(jane_eyre.publication_year).to eq('1847')
      expect(charlotte_bronte.books).to eq([jane_eyre])
    end

    it 'can write and add more books' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")

      expect(villette).to be_a(Book)
      expect(villette.title).to eq('Villette')
      expect(villette.publication_year).to eq('1853')
      expect(charlotte_bronte.books).to eq([jane_eyre, villette])
    end
  end
end