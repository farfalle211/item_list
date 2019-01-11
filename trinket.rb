
module Actualize
  class Trinket < Item     #trinket is itemless and colorless?
    include Changeable

    def initialize(input_options)
      super(input_options[:item], input_options[:color], input_options[:price])
      @type = input_options[:type]
      @size = input_options[:size]
      @price = input_options[:price]
    end
  end
end