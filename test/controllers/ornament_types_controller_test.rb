require 'test_helper'

class OrnamentTypesControllerTest < ActionController::TestCase
  setup do
    @ornament_type = ornament_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ornament_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ornament_type" do
    assert_difference('OrnamentType.count') do
      post :create, ornament_type: {  }
    end

    assert_redirected_to ornament_type_path(assigns(:ornament_type))
  end

  test "should show ornament_type" do
    get :show, id: @ornament_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ornament_type
    assert_response :success
  end

  test "should update ornament_type" do
    patch :update, id: @ornament_type, ornament_type: {  }
    assert_redirected_to ornament_type_path(assigns(:ornament_type))
  end

  test "should destroy ornament_type" do
    assert_difference('OrnamentType.count', -1) do
      delete :destroy, id: @ornament_type
    end

    assert_redirected_to ornament_types_path
  end
end
