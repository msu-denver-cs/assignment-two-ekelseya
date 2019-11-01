require 'test_helper'

class PartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save part without name" do
    part = Part.create({:name => ""})
    refute part.valid?
    refute part.save
  end

  test "should not save part without quantity" do
    part = Part.create({:quantity => ""})
    refute part.valid?
    refute part.save
  end

  test "should not save part without factory" do
    part = Part.create({:factory_id => ""})
    refute part.valid?
    refute part.save
  end
end
