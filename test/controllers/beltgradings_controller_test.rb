require 'test_helper'

class BeltgradingsControllerTest < ActionController::TestCase
  setup do
    @beltgrading = beltgradings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beltgradings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beltgrading" do
    assert_difference('Beltgrading.count') do
      post :create, beltgrading: { event_date: @beltgrading.event_date, location: @beltgrading.location, status: @beltgrading.status, type: @beltgrading.type }
    end

    assert_redirected_to beltgrading_path(assigns(:beltgrading))
  end

  test "should show beltgrading" do
    get :show, id: @beltgrading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beltgrading
    assert_response :success
  end

  test "should update beltgrading" do
    patch :update, id: @beltgrading, beltgrading: { event_date: @beltgrading.event_date, location: @beltgrading.location, status: @beltgrading.status, type: @beltgrading.type }
    assert_redirected_to beltgrading_path(assigns(:beltgrading))
  end

  test "should destroy beltgrading" do
    assert_difference('Beltgrading.count', -1) do
      delete :destroy, id: @beltgrading
    end

    assert_redirected_to beltgradings_path
  end
end
