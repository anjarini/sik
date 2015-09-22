require 'test_helper'

class PenduduksControllerTest < ActionController::TestCase
  setup do
    @penduduk = penduduks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:penduduks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create penduduk" do
    assert_difference('Penduduk.count') do
      post :create, penduduk: { golongan_darah: @penduduk.golongan_darah, nama_belakang: @penduduk.nama_belakang, nama_depan: @penduduk.nama_depan, no_kk: @penduduk.no_kk, pekerjaan: @penduduk.pekerjaan, sex: @penduduk.sex, status_keluarga: @penduduk.status_keluarga, status_nikah: @penduduk.status_nikah, tanggal_lahir: @penduduk.tanggal_lahir, tempat_lahir: @penduduk.tempat_lahir }
    end

    assert_redirected_to penduduk_path(assigns(:penduduk))
  end

  test "should show penduduk" do
    get :show, nik: @penduduk
    assert_response :success
  end

  test "should get edit" do
    get :edit, nik: @penduduk
    assert_response :success
  end

  test "should update penduduk" do
    patch :update, nik: @penduduk, penduduk: { golongan_darah: @penduduk.golongan_darah, nama_belakang: @penduduk.nama_belakang, nama_depan: @penduduk.nama_depan, no_kk: @penduduk.no_kk, pekerjaan: @penduduk.pekerjaan, sex: @penduduk.sex, status_keluarga: @penduduk.status_keluarga, status_nikah: @penduduk.status_nikah, tanggal_lahir: @penduduk.tanggal_lahir, tempat_lahir: @penduduk.tempat_lahir }
    assert_redirected_to penduduk_path(assigns(:penduduk))
  end

  test "should destroy penduduk" do
    assert_difference('Penduduk.count', -1) do
      delete :destroy, id: @penduduk
    end

    assert_redirected_to penduduks_path
  end
end
