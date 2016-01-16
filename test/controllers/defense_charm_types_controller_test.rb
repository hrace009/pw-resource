require 'test_helper'

class DefenseCharmTypesControllerTest < ActionController::TestCase
  setup do
    @defense_charm_type = defense_charm_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defense_charm_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defense_charm_type" do
    assert_difference('DefenseCharmType.count') do
      post :create, defense_charm_type: {  }
    end

    assert_redirected_to defense_charm_type_path(assigns(:defense_charm_type))
  end

  test "should show defense_charm_type" do
    get :show, id: @defense_charm_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defense_charm_type
    assert_response :success
  end

  test "should update defense_charm_type" do
    patch :update, id: @defense_charm_type, defense_charm_type: {  }
    assert_redirected_to defense_charm_type_path(assigns(:defense_charm_type))
  end

  test "should destroy defense_charm_type" do
    assert_difference('DefenseCharmType.count', -1) do
      delete :destroy, id: @defense_charm_type
    end

    assert_redirected_to defense_charm_types_path
  end
end
