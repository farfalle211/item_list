module Actaulize

  class Item
    include Changeable

    attr_reader :item, :color, :price
    attr_writer :price

    def initialize(item, color, price)
      @item = item
      @color = color
      @price = price
    end

  end
end