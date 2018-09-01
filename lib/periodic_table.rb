#################################################################### ‎(ﾉಥ益ಥ）ﾉ ┻━┻
#   Requirements =================================================##
#   - Your application must have a class named Element with      |## 
#       the following attributes:                                |##
#           - name                                               |## (╯'□')╯︵ ┻━┻
#           - atomic weight                                      |##
#           - atomic number                                      |##
#                                                                |##
#   - Find THREE elements on the periodic table and record       |## (ﾉಥДಥ)ﾉ︵┻━┻･/
#     their name, atomic weight and atomic number                |##
#                                                                |##
#   - Implement a way to round the atomic weight of the element  |##
#     to the nearest whole number                                |## ʕノ•ᴥ•ʔノ ︵ ┻━┻
#                                                                |##
#   - Implement a way to display your three elements and all     |##
#     their attributes, including their atomic weight rounded    |##
#     to the nearest whole number                                |## ┬─┬ ︵ /(.□. \）
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ##
####################################################################
#################################################################### (ノ^_^)ノ┻━┻ ┬─┬ ノ( ^_^ノ)

### YOUR CODE HERE:

require 'json'
require 'terminal-table'

class Element
  attr_accessor :name, :atomic_weight, :atomic_number

  def initialize(name, atomic_weight, atomic_number)
    @name = name
    @atomic_weight = atomic_weight
    @atomic_number = atomic_number
    self.class.all << self
  end

  @elements = []

  # Class instance method which returns an array of all the instances of the class that have been created.
  def self.all
    @elements
  end

  # Class instance method which prints a count of the instances of elements that have been created.
  def self.count
    @elements.count
  end

  # Instance method which returns the attributes of the instance as an array.
  def to_a
    [@name, @atomic_number, @atomic_weight]
  end

  # Instance method which prints each attribute of the instance.
  def print
    puts @name, @atomic_number, @atomic_weight
  end
end

# A function that reads the a json file and parses it to a
# Hash using the JSON gem.
def ingest_elements_from_json
  file = File.read('./lib/periodic_table.json') # Reads the periodic_table.json file and assigns it to a variable
  JSON.parse(file) # Uses the JSON gem to parse the json into a Ruby Hash
end

# Takes an array of hashes and turns each hash into an instance of Element
def create_element_objects(elements)
  elements["elements"].each do |el| # Loops through hashes
    Element.new(el["name"], el["atomic_mass"], el["number"]) # Instantiates each hash as an Element
  end
end

elements_hash = ingest_elements_from_json # Provides an array of hashes read from the periodic_table.json file

create_element_objects(elements_hash) # Creates instances of Element from the array of hashes

rows = Element.all.map {|el| el.to_a} # Uses maps to turn each element into an array or attributes

# For this part of the code you need to have installed the table-terminal gem using:
# `gem install table-terminal`
# See the Github repo and docs for table-terminal here: https://github.com/tj/terminal-table

table = Terminal::Table.new :rows => rows # Uses the table-terminal gem
puts table