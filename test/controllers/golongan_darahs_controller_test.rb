require 'test_helper'

class GolonganDarahsControllerTest < ActionController::TestCase
  setup do
    @golongan_darah = golongan_darahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:golongan_darahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create golongan_darah" do
    assert_difference('GolonganDarah.count') do
      post :create, golongan_darah: { golongan_darah: @golongan_darah.golongan_darah }
    end

    assert_redirected_to golongan_darah_path(assigns(:golongan_darah))
  end

  test "should show golongan_darah" do
    get :show, id: @golongan_darah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @golongan_darah
    assert_response :success
  end

  test "should update golongan_darah" do
    patch :update, id: @golongan_darah, golongan_darah: { golongan_darah: @golongan_darah.golongan_darah }
    assert_redirected_to golongan_darah_path(assigns(:golongan_darah))
  end

  test "should destroy golongan_darah" do
    assert_difference('GolonganDarah.count', -1) do
      delete :destroy, id: @golongan_darah
    end

    assert_redirected_to golongan_darahs_path
  end
end
