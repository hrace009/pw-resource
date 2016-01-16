require 'test_helper'

class SkilltomeTypesControllerTest < ActionController::TestCase
  setup do
    @skilltome_type = skilltome_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skilltome_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skilltome_type" do
    assert_difference('SkilltomeType.count') do
      post :create, skilltome_type: {  }
    end

    assert_redirected_to skilltome_type_path(assigns(:skilltome_type))
  end

  test "should show skilltome_type" do
    get :show, id: @skilltome_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skilltome_type
    assert_response :success
  end

  test "should update skilltome_type" do
    patch :update, id: @skilltome_type, skilltome_type: {  }
    assert_redirected_to skilltome_type_path(assigns(:skilltome_type))
  end

  test "should destroy skilltome_type" do
    assert_difference('SkilltomeType.count', -1) do
      delete :destroy, id: @skilltome_type
    end

    assert_redirected_to skilltome_types_path
  end
end
