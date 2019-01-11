module Actualize
  module Changeable

    def increase_price
      @price += 15
    end

    def decrease_price
      @price -= 15
    end

  end
end