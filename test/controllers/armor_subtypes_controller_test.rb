require 'test_helper'

class ArmorSubtypesControllerTest < ActionController::TestCase
  setup do
    @armor_subtype = armor_subtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armor_subtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create armor_subtype" do
    assert_difference('ArmorSubtype.count') do
      post :create, armor_subtype: {  }
    end

    assert_redirected_to armor_subtype_path(assigns(:armor_subtype))
  end

  test "should show armor_subtype" do
    get :show, id: @armor_subtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @armor_subtype
    assert_response :success
  end

  test "should update armor_subtype" do
    patch :update, id: @armor_subtype, armor_subtype: {  }
    assert_redirected_to armor_subtype_path(assigns(:armor_subtype))
  end

  test "should destroy armor_subtype" do
    assert_difference('ArmorSubtype.count', -1) do
      delete :destroy, id: @armor_subtype
    end

    assert_redirected_to armor_subtypes_path
  end
end
