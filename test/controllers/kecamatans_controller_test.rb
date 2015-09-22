require 'test_helper'

class KecamatansControllerTest < ActionController::TestCase
  setup do
    @kecamatan = kecamatans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kecamatans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kecamatan" do
    assert_difference('Kecamatan.count') do
      post :create, kecamatan: { alamat: @kecamatan.alamat, nama_kecamatan: @kecamatan.nama_kecamatan }
    end

    assert_redirected_to kecamatan_path(assigns(:kecamatan))
  end

  test "should show kecamatan" do
    get :show, id: @kecamatan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kecamatan
    assert_response :success
  end

  test "should update kecamatan" do
    patch :update, id: @kecamatan, kecamatan: { alamat: @kecamatan.alamat, nama_kecamatan: @kecamatan.nama_kecamatan }
    assert_redirected_to kecamatan_path(assigns(:kecamatan))
  end

  test "should destroy kecamatan" do
    assert_difference('Kecamatan.count', -1) do
      delete :destroy, id: @kecamatan
    end

    assert_redirected_to kecamatans_path
  end
end
