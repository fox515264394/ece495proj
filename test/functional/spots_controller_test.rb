require 'test_helper'

class SpotsControllerTest < ActionController::TestCase
  setup do
    @spot = spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spot" do
    assert_difference('Spot.count') do
      post :create, spot: { address: @spot.address, description: @spot.description, image_url: @spot.image_url, latitude: @spot.latitude, longitude: @spot.longitude, title: @spot.title }
    end

    assert_redirected_to spot_path(assigns(:spot))
  end

  test "should show spot" do
    get :show, id: @spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spot
    assert_response :success
  end

  test "should update spot" do
    put :update, id: @spot, spot: { address: @spot.address, description: @spot.description, image_url: @spot.image_url, latitude: @spot.latitude, longitude: @spot.longitude, title: @spot.title }
    assert_redirected_to spot_path(assigns(:spot))
  end

  test "should destroy spot" do
    assert_difference('Spot.count', -1) do
      delete :destroy, id: @spot
    end

    assert_redirected_to spots_path
  end
end
