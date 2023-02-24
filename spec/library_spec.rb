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
end