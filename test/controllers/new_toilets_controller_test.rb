require 'test_helper'

class NewToiletsControllerTest < ActionController::TestCase
  setup do
    @new_toilet = new_toilets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_toilets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_toilet" do
    assert_difference('NewToilet.count') do
      post :create, new_toilet: { cleanliness: @new_toilet.cleanliness, name: @new_toilet.name, price: @new_toilet.price, string: @new_toilet.string }
    end

    assert_redirected_to new_toilet_path(assigns(:new_toilet))
  end

  test "should show new_toilet" do
    get :show, id: @new_toilet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_toilet
    assert_response :success
  end

  test "should update new_toilet" do
    patch :update, id: @new_toilet, new_toilet: { cleanliness: @new_toilet.cleanliness, name: @new_toilet.name, price: @new_toilet.price, string: @new_toilet.string }
    assert_redirected_to new_toilet_path(assigns(:new_toilet))
  end

  test "should destroy new_toilet" do
    assert_difference('NewToilet.count', -1) do
      delete :destroy, id: @new_toilet
    end

    assert_redirected_to new_toilets_path
  end
end
