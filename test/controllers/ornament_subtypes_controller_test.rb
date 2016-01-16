require 'test_helper'

class OrnamentSubtypesControllerTest < ActionController::TestCase
  setup do
    @ornament_subtype = ornament_subtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ornament_subtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ornament_subtype" do
    assert_difference('OrnamentSubtype.count') do
      post :create, ornament_subtype: {  }
    end

    assert_redirected_to ornament_subtype_path(assigns(:ornament_subtype))
  end

  test "should show ornament_subtype" do
    get :show, id: @ornament_subtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ornament_subtype
    assert_response :success
  end

  test "should update ornament_subtype" do
    patch :update, id: @ornament_subtype, ornament_subtype: {  }
    assert_redirected_to ornament_subtype_path(assigns(:ornament_subtype))
  end

  test "should destroy ornament_subtype" do
    assert_difference('OrnamentSubtype.count', -1) do
      delete :destroy, id: @ornament_subtype
    end

    assert_redirected_to ornament_subtypes_path
  end
end
