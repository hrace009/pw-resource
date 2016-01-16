require 'test_helper'

class ChiStonesControllerTest < ActionController::TestCase
  setup do
    @chi_stone = chi_stones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chi_stones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chi_stone" do
    assert_difference('ChiStone.count') do
      post :create, chi_stone: {  }
    end

    assert_redirected_to chi_stone_path(assigns(:chi_stone))
  end

  test "should show chi_stone" do
    get :show, id: @chi_stone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chi_stone
    assert_response :success
  end

  test "should update chi_stone" do
    patch :update, id: @chi_stone, chi_stone: {  }
    assert_redirected_to chi_stone_path(assigns(:chi_stone))
  end

  test "should destroy chi_stone" do
    assert_difference('ChiStone.count', -1) do
      delete :destroy, id: @chi_stone
    end

    assert_redirected_to chi_stones_path
  end
end
