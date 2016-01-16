require 'test_helper'

class EquipmentAddonsControllerTest < ActionController::TestCase
  setup do
    @equipment_addon = equipment_addons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_addons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_addon" do
    assert_difference('EquipmentAddon.count') do
      post :create, equipment_addon: {  }
    end

    assert_redirected_to equipment_addon_path(assigns(:equipment_addon))
  end

  test "should show equipment_addon" do
    get :show, id: @equipment_addon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_addon
    assert_response :success
  end

  test "should update equipment_addon" do
    patch :update, id: @equipment_addon, equipment_addon: {  }
    assert_redirected_to equipment_addon_path(assigns(:equipment_addon))
  end

  test "should destroy equipment_addon" do
    assert_difference('EquipmentAddon.count', -1) do
      delete :destroy, id: @equipment_addon
    end

    assert_redirected_to equipment_addons_path
  end
end
