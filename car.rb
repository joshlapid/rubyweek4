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
