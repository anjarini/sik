require 'test_helper'

class KelurahansControllerTest < ActionController::TestCase
  setup do
    @kelurahan = kelurahans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kelurahans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kelurahan" do
    assert_difference('Kelurahan.count') do
      post :create, kelurahan: { alamat_kel: @kelurahan.alamat_kel, nama_kelurahan: @kelurahan.nama_kelurahan }
    end

    assert_redirected_to kelurahan_path(assigns(:kelurahan))
  end

  test "should show kelurahan" do
    get :show, id: @kelurahan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kelurahan
    assert_response :success
  end

  test "should update kelurahan" do
    patch :update, id: @kelurahan, kelurahan: { alamat_kel: @kelurahan.alamat_kel, nama_kelurahan: @kelurahan.nama_kelurahan }
    assert_redirected_to kelurahan_path(assigns(:kelurahan))
  end

  test "should destroy kelurahan" do
    assert_difference('Kelurahan.count', -1) do
      delete :destroy, id: @kelurahan
    end

    assert_redirected_to kelurahans_path
  end
end
