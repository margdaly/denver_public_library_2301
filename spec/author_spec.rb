require 'spec_helper'

RSpec.describe Author do
  describe '#initialize' do
    it 'exists' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte).to be_a(Author)
      expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    end
  end
end