require 'test_helper'

class PenghasilansControllerTest < ActionController::TestCase
  setup do
    @penghasilan = penghasilans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:penghasilans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create penghasilan" do
    assert_difference('Penghasilan.count') do
      post :create, penghasilan: { penghasilan: @penghasilan.penghasilan }
    end

    assert_redirected_to penghasilan_path(assigns(:penghasilan))
  end

  test "should show penghasilan" do
    get :show, id: @penghasilan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @penghasilan
    assert_response :success
  end

  test "should update penghasilan" do
    patch :update, id: @penghasilan, penghasilan: { penghasilan: @penghasilan.penghasilan }
    assert_redirected_to penghasilan_path(assigns(:penghasilan))
  end

  test "should destroy penghasilan" do
    assert_difference('Penghasilan.count', -1) do
      delete :destroy, id: @penghasilan
    end

    assert_redirected_to penghasilans_path
  end
end
