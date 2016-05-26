
# create a new class called Vehicle
class Vehicle
  #purpose initializees Vehicle class with model year, light status
  # signature year = fixnum; light status= boolean
  # example myVehicle.new(2013) -> @model_year = 2013
  # @lights = false
  def initialize(year)
    @model_year = year
    @lights = false
  end

  # Purpose  gets the model year for vehicle.new
  # singature @model_year= fixnum
  # example puts myVehicle.get_model_year -> 2013
  def get_model_year
    @model_year
  end

  #shows that status of the lights - either on or off
  def lights_on?
    @lights
  end

  # Purpose changes status of lights
  # Signature boolean -> nothing
  # Example vehicle.lightsOn? # should return false
  # vehicle.lightsOn = true
  # vehicle.lightsOn? # should return true
  # vehicle.lightsOn = false
  # vehicle.lightsOn? # should return false
  def lights_on= light_status
    @lights = light_status
  end



end
# create new object with Vehicle class
myVehicle = Vehicle.new(2017)
# p myVehicle.lights_on? # should return false
# myVehicle.lights_on= true
# puts myVehicle.lights_on? # should return true
# myVehicle.lights_on= false
# puts myVehicle.lights_on? # should return false
# create new class called Car
# initialize, create instance variable for number of wheels
class Car < Vehicle
  # Purpose Initializes car inheriting vehicle year. Has four wheels and current speed zero
  # Signature wheels = fixnum, speed = fixnum
  # Example
  def initialize(year)
    super(year)
    @num_wheels = 4
    @speed_of_car = 0
  end

  def get_num_wheels
    @num_wheels
  end

  def speed_up x
    @speed_of_car = @speed_of_car + x
  end

  # Purpose: slow down car by y
  # Signature: (Number) -> nutin'
  # Example
  # aCar.slow_down(2)
  # aCar.get_speed -> original speed - 2
  def slow_down y
    if @speed_of_car >= 7
      @speed_of_car = @speed_of_car - y
    else
      @speed_of_car = @speed_of_car - @speed_of_car
    end
  end
  # Purpose: return current speed of car
  # Signature: (nutin') -> Number
  def get_speed
    @speed_of_car
  end

  def get_model
    @model
  end

  # def year_and_model
  #   @model + @model_year
  # end
  # def car_collection_by_year (new_car)
  #   @collection_by_year << Car.new
  # end
  # def get_car_collection_by_year
  #   @collection_by_year
  # end
end
# create new car object with Car class
myCar = Car.new(2014)
# puts myCar.get_num_wheels
# create new class called Tesla, inherits from class Car
class Tesla < Car
  def initialize(year)
    super year
    @model = "Tesla"
  end

end

# create new car object with Car class
myTesla = Tesla.new(2010)
# puts myTesla.get_num_wheels
# puts myTesla.get_model_year
# myTesla.speed_up 10
# myTesla.speed_up 10
# myTesla.speed_up 10
# myTesla.slow_down 7
# myTesla.slow_down 7
# myTesla.slow_down 7
# myTesla.slow_down 7
# myTesla.slow_down 7
# puts myTesla.get_speed
myTesla2 = Tesla.new(2016)
# puts myTesla2.year_and_model



# create new class called Tata, inherits from class Car
class Tata < Car
  def initialize(year)
    super year
    @model = "Tata"
  end
end

# create new car object with Car class
myTata = Tata.new(1989)
# puts myTata.get_num_wheels
# puts myTata.get_model_year
# puts myTata.slow_down 10
myTata2 = Tata.new(2006)


# create new class called Toyota, inherits from class Car
class Toyota < Car
  def initialize(year)
    super year
    @model = "Toyota"
  end
end

# create new car object with Car class
myToyota = Toyota.new(2005)
# puts myToyota.get_num_wheels
# puts myToyota.get_model_year
myToyota2 = Toyota.new(1973)

# class Garage
#   def initialize
#     @collection = []
#   end
#
#   def add_car(car)
#     @collection << car
#   end
#
#   def get_car_collection
#     @collection
#   end
# end
puts myToyota.get_model_year

# collection = []
# collection<< myTesla
# collection << myTesla2
# collection << myTata
# collection << myTata2
# collection << myToyota
# collection << myToyota2
# collection.sort { |car1, car2| car1.get_model_year - car2.get_model_year }.each { |car| puts car.get_model_year + car.get_model }
