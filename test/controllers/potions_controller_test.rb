require 'test_helper'

class PotionsControllerTest < ActionController::TestCase
  setup do
    @potion = potions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create potion" do
    assert_difference('Potion.count') do
      post :create, potion: {  }
    end

    assert_redirected_to potion_path(assigns(:potion))
  end

  test "should show potion" do
    get :show, id: @potion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @potion
    assert_response :success
  end

  test "should update potion" do
    patch :update, id: @potion, potion: {  }
    assert_redirected_to potion_path(assigns(:potion))
  end

  test "should destroy potion" do
    assert_difference('Potion.count', -1) do
      delete :destroy, id: @potion
    end

    assert_redirected_to potions_path
  end
end
