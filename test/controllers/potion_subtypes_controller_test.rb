require 'test_helper'

class PotionSubtypesControllerTest < ActionController::TestCase
  setup do
    @potion_subtype = potion_subtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potion_subtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create potion_subtype" do
    assert_difference('PotionSubtype.count') do
      post :create, potion_subtype: {  }
    end

    assert_redirected_to potion_subtype_path(assigns(:potion_subtype))
  end

  test "should show potion_subtype" do
    get :show, id: @potion_subtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @potion_subtype
    assert_response :success
  end

  test "should update potion_subtype" do
    patch :update, id: @potion_subtype, potion_subtype: {  }
    assert_redirected_to potion_subtype_path(assigns(:potion_subtype))
  end

  test "should destroy potion_subtype" do
    assert_difference('PotionSubtype.count', -1) do
      delete :destroy, id: @potion_subtype
    end

    assert_redirected_to potion_subtypes_path
  end
end
