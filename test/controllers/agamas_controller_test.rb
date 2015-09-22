require 'test_helper'

class AgamasControllerTest < ActionController::TestCase
  setup do
    @agama = agamas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agamas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agama" do
    assert_difference('Agama.count') do
      post :create, agama: { nama_agama: @agama.nama_agama }
    end

    assert_redirected_to agama_path(assigns(:agama))
  end

  test "should show agama" do
    get :show, id: @agama
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agama
    assert_response :success
  end

  test "should update agama" do
    patch :update, id: @agama, agama: { nama_agama: @agama.nama_agama }
    assert_redirected_to agama_path(assigns(:agama))
  end

  test "should destroy agama" do
    assert_difference('Agama.count', -1) do
      delete :destroy, id: @agama
    end

    assert_redirected_to agamas_path
  end
end
