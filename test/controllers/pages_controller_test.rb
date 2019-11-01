# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  test 'should show home page' do
    get home_url(@page)
    assert_response :success
  end

  test 'should show search page' do
    get search_page_url(@page)
    assert_response :success
  end

  test "shouldn't find missing car" do
    assert Car.where('model like ?', 'Bob').empty?
  end

  test "shouldn't find missing part" do
    assert Part.where('name like ?', 'Bob').empty?
  end

  test "shouldn't find missing factory" do
    assert Factory.where('name like ?', 'Bob').empty?
  end

end
