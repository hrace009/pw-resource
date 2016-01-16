require 'test_helper'

class PotionTypesControllerTest < ActionController::TestCase
  setup do
    @potion_type = potion_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potion_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create potion_type" do
    assert_difference('PotionType.count') do
      post :create, potion_type: {  }
    end

    assert_redirected_to potion_type_path(assigns(:potion_type))
  end

  test "should show potion_type" do
    get :show, id: @potion_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @potion_type
    assert_response :success
  end

  test "should update potion_type" do
    patch :update, id: @potion_type, potion_type: {  }
    assert_redirected_to potion_type_path(assigns(:potion_type))
  end

  test "should destroy potion_type" do
    assert_difference('PotionType.count', -1) do
      delete :destroy, id: @potion_type
    end

    assert_redirected_to potion_types_path
  end
end
