require 'test_helper'

class PreceptorsControllerTest < ActionController::TestCase
  setup do
    @preceptor = preceptors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preceptors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preceptor" do
    assert_difference('Preceptor.count') do
      post :create, preceptor: { abyasi_id: @preceptor.abyasi_id, center: @preceptor.center, name: @preceptor.name, place: @preceptor.place, role: @preceptor.role }
    end

    assert_redirected_to preceptor_path(assigns(:preceptor))
  end

  test "should show preceptor" do
    get :show, id: @preceptor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preceptor
    assert_response :success
  end

  test "should update preceptor" do
    patch :update, id: @preceptor, preceptor: { abyasi_id: @preceptor.abyasi_id, center: @preceptor.center, name: @preceptor.name, place: @preceptor.place, role: @preceptor.role }
    assert_redirected_to preceptor_path(assigns(:preceptor))
  end

  test "should destroy preceptor" do
    assert_difference('Preceptor.count', -1) do
      delete :destroy, id: @preceptor
    end

    assert_redirected_to preceptors_path
  end
end
