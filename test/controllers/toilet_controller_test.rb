require 'test_helper'

class ToiletControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get price:integer" do
    get :price:integer
    assert_response :success
  end

  test "should get cover:string" do
    get :cover:string
    assert_response :success
  end

  test "should get cleanliness:string" do
    get :cleanliness:string
    assert_response :success
  end

end
