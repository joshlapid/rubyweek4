# Creates a new class called Car
class Car
  def initialize
    @num_wheels = 4
    @model_year = 2010
    @color = 'unpainted'
    @speed = 0
  end

  def num_wheels
    @num_wheels
  end

  def model_year
    @model_year
  end

  def color
    @color
  end

  def color=(new_color)
    @color = new_color
  end

  def model_name
    'Tata'
  end

  def current_speed
    @speed
  end

  def accelerateby(how_fast)
    @speed += how_fast
  end

  def slow_down_by(how_slow)
    @speed -= how_slow
  end
end

class Tesla < Car

  def initialize
    super()
    @charge = 0
  end

  def battery_life
    @charge
  end
  # battery charges at 10% per hour charging
  def charge_up(how_long_charging)
    @charge = (how_long_charging*10)
  end
  # battery decrements 5% per hour driving
  def drive_down(how_long_driving)
    @charge -= (how_long_driving*5)
  end
end

# class Toyota < Car

  my_Tesla = Tesla.new
  my_Tesla.charge_up(6)
  puts my_Tesla.charge_up(6)
  puts my_Tesla.drive_down(3)
  puts my_Tesla.accelerateby(23)
