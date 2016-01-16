require 'test_helper'

class AttackCharmsControllerTest < ActionController::TestCase
  setup do
    @attack_charm = attack_charms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attack_charms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attack_charm" do
    assert_difference('AttackCharm.count') do
      post :create, attack_charm: {  }
    end

    assert_redirected_to attack_charm_path(assigns(:attack_charm))
  end

  test "should show attack_charm" do
    get :show, id: @attack_charm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attack_charm
    assert_response :success
  end

  test "should update attack_charm" do
    patch :update, id: @attack_charm, attack_charm: {  }
    assert_redirected_to attack_charm_path(assigns(:attack_charm))
  end

  test "should destroy attack_charm" do
    assert_difference('AttackCharm.count', -1) do
      delete :destroy, id: @attack_charm
    end

    assert_redirected_to attack_charms_path
  end
end
