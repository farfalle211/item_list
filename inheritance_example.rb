class Vehicle         # how come I can't include bike in car?
  attr_reader :speed, :direction
  attr_writer :speed, :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end



class Car < Vehicle
  attr_reader :fuel, :make, :model
  attr_writer :attr_names

  def initialize(input_options)
      super()     #we need super here to pull speed and direction down from the Vehicle initialize method. 
      @fuel = input_options[:fuel]
      @make = input_options[:make]
      @model = input_options[:model]
 
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end



class Bike < Vehicle

  attr_reader :gear, :weight, :type

  def initialize(input_options)
      super()
      @gear = input_options[:gear]
      @weight = input_options[:weight]
      @type = input_options[:type]
  end

  def ring_bell
    puts "Ring ring!"
  end

end

car = Car.new(
               fuel: 10,
               make: "Honda",
               model: "CRV")

            
bike = Bike.new( 
                gear: 18, 
                type: "Mountain",
                weight:  27
                )

p bike.accelerate
