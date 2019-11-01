require 'test_helper'

class FactoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save factory without name" do
    factory = Factory.create({:name => ""})
    refute factory.valid?
    refute factory.save
  end

  test "should not save factory without location" do
    factory = Factory.create({:location => ""})
    refute factory.valid?
    refute factory.save
  end

end
