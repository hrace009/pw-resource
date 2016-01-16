require 'test_helper'

class WeaponSubtypesControllerTest < ActionController::TestCase
  setup do
    @weapon_subtype = weapon_subtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weapon_subtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weapon_subtype" do
    assert_difference('WeaponSubtype.count') do
      post :create, weapon_subtype: {  }
    end

    assert_redirected_to weapon_subtype_path(assigns(:weapon_subtype))
  end

  test "should show weapon_subtype" do
    get :show, id: @weapon_subtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weapon_subtype
    assert_response :success
  end

  test "should update weapon_subtype" do
    patch :update, id: @weapon_subtype, weapon_subtype: {  }
    assert_redirected_to weapon_subtype_path(assigns(:weapon_subtype))
  end

  test "should destroy weapon_subtype" do
    assert_difference('WeaponSubtype.count', -1) do
      delete :destroy, id: @weapon_subtype
    end

    assert_redirected_to weapon_subtypes_path
  end
end
