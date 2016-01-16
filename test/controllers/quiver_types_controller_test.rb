require 'test_helper'

class QuiverTypesControllerTest < ActionController::TestCase
  setup do
    @quiver_type = quiver_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quiver_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quiver_type" do
    assert_difference('QuiverType.count') do
      post :create, quiver_type: {  }
    end

    assert_redirected_to quiver_type_path(assigns(:quiver_type))
  end

  test "should show quiver_type" do
    get :show, id: @quiver_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quiver_type
    assert_response :success
  end

  test "should update quiver_type" do
    patch :update, id: @quiver_type, quiver_type: {  }
    assert_redirected_to quiver_type_path(assigns(:quiver_type))
  end

  test "should destroy quiver_type" do
    assert_difference('QuiverType.count', -1) do
      delete :destroy, id: @quiver_type
    end

    assert_redirected_to quiver_types_path
  end
end
