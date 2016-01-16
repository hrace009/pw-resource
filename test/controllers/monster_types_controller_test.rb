require 'test_helper'

class MonsterTypesControllerTest < ActionController::TestCase
  setup do
    @monster_type = monster_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monster_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monster_type" do
    assert_difference('MonsterType.count') do
      post :create, monster_type: {  }
    end

    assert_redirected_to monster_type_path(assigns(:monster_type))
  end

  test "should show monster_type" do
    get :show, id: @monster_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monster_type
    assert_response :success
  end

  test "should update monster_type" do
    patch :update, id: @monster_type, monster_type: {  }
    assert_redirected_to monster_type_path(assigns(:monster_type))
  end

  test "should destroy monster_type" do
    assert_difference('MonsterType.count', -1) do
      delete :destroy, id: @monster_type
    end

    assert_redirected_to monster_types_path
  end
end
