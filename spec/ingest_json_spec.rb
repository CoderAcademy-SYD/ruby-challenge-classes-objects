require 'rspec'

describe 'The ingest_elements_from_json method should' do
  it 'should return a hash' do
    expect(ingest_elements_from_json).to be_a_kind_of(Hash)
  end
end

describe 'The create_element_objects' do
  it 'should return an array of Elements' do
    # elements = create_element_objects(ingest_elements_from_json)
    # expect(elements).to be_a_kind_of(Array)
    # elements.each do |element|
    #   p element
    #   expect(element).to be_a_kind_of(Element)
    # end
  end
end