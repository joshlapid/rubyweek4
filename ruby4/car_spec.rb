require 'rspec'
require_relative 'car'

describe 'Car' do
  it 'you should be able to create a new car' do
    expect { Car.new }.to_not raise_error
  end

  it 'has wheels' do
    a_car = Car.new
    expect(a_car.num_wheels).to eq 4
  end

  it 'has a model year' do
    a_car = Car.new
    expect(a_car.model_year).to be_a Numeric
  end

  it 'has a color' do
    a_car = Car.new
    expect(a_car.color).to be_a String
  end

  it 'is able to change color' do
    a_car = Car.new
    a_car.color = 'black'
    expect(a_car.color).to eq 'black'
  end

  it 'has model name' do
    a_car = Car.new
    expect(a_car.model_name).to be_a String
  end

  it 'has a speed' do
    a_car = Car.new
    expect(a_car.current_speed).to be_a Numeric
  end

  it 'has a starting speed of zero' do
    a_car = Car.new
    expect(a_car.current_speed).to be 0
  end

  it 'can accelerateby a given amount' do
    a_car = Car.new
    expect(a_car.current_speed).to eq 0
    a_car.accelerateby 32
    expect(a_car.current_speed).to eq 32
  end

  it 'can slow down by a given amount' do
    a_car = Car.new
    a_car.accelerateby 70
    a_car.slow_down_by 22
    expect(a_car.current_speed).to eq 48
  end
end

describe Tesla do
  it 'you should be able to create a Tesla that inherits Car      class' do
    expect { Tesla.new }.to_not raise_error
  end

  it ' will not have any battery charge when created' do
    a_tesla = Tesla.new
    expect(a_tesla.battery_life).to eq 0
  end

  it 'you can charge the battery' do
    a_tesla = Tesla.new
    a_tesla.charge_up(6)
    expect(a_tesla.battery_life).to eq 60
  end

  it 'can use battery while you drive' do
    a_tesla = Tesla.new
    a_tesla.charge_up(6)
    a_tesla.drive_down(6)
    expect(a_tesla.battery_life).to eq 30
  end
end
