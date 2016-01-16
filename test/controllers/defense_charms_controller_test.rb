require 'test_helper'

class DefenseCharmsControllerTest < ActionController::TestCase
  setup do
    @defense_charm = defense_charms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defense_charms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defense_charm" do
    assert_difference('DefenseCharm.count') do
      post :create, defense_charm: {  }
    end

    assert_redirected_to defense_charm_path(assigns(:defense_charm))
  end

  test "should show defense_charm" do
    get :show, id: @defense_charm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defense_charm
    assert_response :success
  end

  test "should update defense_charm" do
    patch :update, id: @defense_charm, defense_charm: {  }
    assert_redirected_to defense_charm_path(assigns(:defense_charm))
  end

  test "should destroy defense_charm" do
    assert_difference('DefenseCharm.count', -1) do
      delete :destroy, id: @defense_charm
    end

    assert_redirected_to defense_charms_path
  end
end
