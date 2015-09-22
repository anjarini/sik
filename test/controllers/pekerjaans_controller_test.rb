require 'test_helper'

class PekerjaansControllerTest < ActionController::TestCase
  setup do
    @pekerjaan = pekerjaans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pekerjaans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pekerjaan" do
    assert_difference('Pekerjaan.count') do
      post :create, pekerjaan: { jenis_pekerjaan: @pekerjaan.jenis_pekerjaan }
    end

    assert_redirected_to pekerjaan_path(assigns(:pekerjaan))
  end

  test "should show pekerjaan" do
    get :show, id: @pekerjaan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pekerjaan
    assert_response :success
  end

  test "should update pekerjaan" do
    patch :update, id: @pekerjaan, pekerjaan: { jenis_pekerjaan: @pekerjaan.jenis_pekerjaan }
    assert_redirected_to pekerjaan_path(assigns(:pekerjaan))
  end

  test "should destroy pekerjaan" do
    assert_difference('Pekerjaan.count', -1) do
      delete :destroy, id: @pekerjaan
    end

    assert_redirected_to pekerjaans_path
  end
end
