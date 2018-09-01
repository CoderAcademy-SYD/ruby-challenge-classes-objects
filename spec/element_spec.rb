require 'rspec'
# ./periodic_table.rb
require 'periodic_table'

# describe "a stub for the ingest_elements_from_json_method"
# context "when called" do
#   it "returns a hash"
#   receiver = ingest_elements_from_json
#   receiver.stub(:hashes) {:return_value}
#   receiver.hashes.should eq(nil)
# end

describe Element do
  describe ".all" do
    context "when called with periodic_table.json" do
      it "returns zero" do
        expect(Element.all).to be_a_kind_of(Array)
      end
    end
  end
  describe '.count' do
    it "returns the count of elements" do
      expect(Element.count).to be_a_kind_of(Integer)
    end
  end
  describe '.count' do
    it "to return 119 elements" do
      expect(Element.count).to eq(118)
    end
  end
end