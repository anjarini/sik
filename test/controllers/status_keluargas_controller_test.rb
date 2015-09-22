require 'test_helper'

class StatusKeluargasControllerTest < ActionController::TestCase
  setup do
    @status_keluarga = status_keluargas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_keluargas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_keluarga" do
    assert_difference('StatusKeluarga.count') do
      post :create, status_keluarga: { status_keluarga: @status_keluarga.status_keluarga }
    end

    assert_redirected_to status_keluarga_path(assigns(:status_keluarga))
  end

  test "should show status_keluarga" do
    get :show, id: @status_keluarga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_keluarga
    assert_response :success
  end

  test "should update status_keluarga" do
    patch :update, id: @status_keluarga, status_keluarga: { status_keluarga: @status_keluarga.status_keluarga }
    assert_redirected_to status_keluarga_path(assigns(:status_keluarga))
  end

  test "should destroy status_keluarga" do
    assert_difference('StatusKeluarga.count', -1) do
      delete :destroy, id: @status_keluarga
    end

    assert_redirected_to status_keluargas_path
  end
end
