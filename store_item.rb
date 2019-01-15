
# item_1 = {:item => "ball", :color => "blue", :price => 10}      #Ruby
# item_2 = {item: "trumpet", color: "gold", price: 200}   #Javacript
# item_3 = {:item => "doll", :color => "white", :price => 30}


# p item_1[:item] #you are calling the variable item_1, :item is a symbol that calls the value in that key value hash. If the key is in quotations, like, "item", then you have to call "item" instead of :item. In Javascript, you have to use symbols to call the value in a key/value pair, and can't use quotations. You can see on item_2, that the syntax is item: "trumpet", but you still have to print it using a symbol as in p item_2[:item].
# p item_2[:item] 
module Changeable

  def increase_price
    @price += 15
  end

  def decrease_price
    @price -= 15
  end

end

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

class Trinket < Item     #trinket is itemless and colorless?
  include Changeable

  def initialize(input_options)
    super
    @type = input_options[:type]
    @size = input_options[:size]
    @price = input_options[:price]
  end


end

item_1 = Item.new("ball", "blue", 10)
item_2 = Item.new("trumpet", "gold", 200)

trinket = Trinket.new(
                      type: "pencil", 
                      size: "medium", 
                      price: 1)

p trinket.increase_price



