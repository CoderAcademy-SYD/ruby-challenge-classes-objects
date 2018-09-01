require 'rspec'
# ./periodic_table.rb
require 'periodic_table'

describe 'The Element class' do
  describe '.all' do
    it 'returns an array' do
      expect(Element.all).to be_a_kind_of(Array)
    end
  end
  describe '.count' do
    it 'returns an integer' do
      expect(Element.count).to be_a_kind_of(Integer)
    end
  end
  describe '.count' do
    context 'when periodic_table.json has been parsed to an array of hashes with each hash instantiated as an Element' do
      it 'returns 119 Elements' do
        expect(Element.count).to eq(119)
      end
    end
  end
  describe '.initialize' do
    it "instantiates an Element with the name: 'Gold', atomic weight: 10.2, and atomic number: 2" do
      gold = Element.new('Gold', 10.2, 2)
      expect(gold.name).to eq('Gold')
      expect(gold.atomic_number).to eq(2)
    end
  end

  describe '.print' do
    it 'prints the @name, @atomic_number and @atomic_weight' do
      gold = Element.new('Gold', 10.2, 2)
      expectation = expect { gold.print }
      expectation.to output(puts('Gold', 2, 10.2)).to_stdout
    end
  end

  describe '.initialize' do
    it 'initialises an object that is an instance of class Element' do
      expect(Element.new('Gold', 10.2, 2)).to be_a_kind_of(Element)
    end
  end
end

