require 'test_helper'

class CarTest < ActiveSupport::TestCase

  test "should not save car without make" do
    car = Car.create({:make => ""})
    refute car.valid?
    refute car.save
  end

  test "should not save car without model" do
    car = Car.create({:model => ""})
    refute car.valid?
    refute car.save
  end

  test "should not save car without vin" do
    car = Car.create({:vin => ""})
    refute car.valid?
    refute car.save
  end

end
