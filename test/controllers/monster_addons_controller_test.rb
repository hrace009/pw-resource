require 'test_helper'

class MonsterAddonsControllerTest < ActionController::TestCase
  setup do
    @monster_addon = monster_addons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monster_addons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monster_addon" do
    assert_difference('MonsterAddon.count') do
      post :create, monster_addon: {  }
    end

    assert_redirected_to monster_addon_path(assigns(:monster_addon))
  end

  test "should show monster_addon" do
    get :show, id: @monster_addon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monster_addon
    assert_response :success
  end

  test "should update monster_addon" do
    patch :update, id: @monster_addon, monster_addon: {  }
    assert_redirected_to monster_addon_path(assigns(:monster_addon))
  end

  test "should destroy monster_addon" do
    assert_difference('MonsterAddon.count', -1) do
      delete :destroy, id: @monster_addon
    end

    assert_redirected_to monster_addons_path
  end
end
