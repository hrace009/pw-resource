require 'test_helper'

class MaterialSubtypesControllerTest < ActionController::TestCase
  setup do
    @material_subtype = material_subtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_subtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_subtype" do
    assert_difference('MaterialSubtype.count') do
      post :create, material_subtype: {  }
    end

    assert_redirected_to material_subtype_path(assigns(:material_subtype))
  end

  test "should show material_subtype" do
    get :show, id: @material_subtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material_subtype
    assert_response :success
  end

  test "should update material_subtype" do
    patch :update, id: @material_subtype, material_subtype: {  }
    assert_redirected_to material_subtype_path(assigns(:material_subtype))
  end

  test "should destroy material_subtype" do
    assert_difference('MaterialSubtype.count', -1) do
      delete :destroy, id: @material_subtype
    end

    assert_redirected_to material_subtypes_path
  end
end
