require 'test_helper'

class AttackCharmTypesControllerTest < ActionController::TestCase
  setup do
    @attack_charm_type = attack_charm_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attack_charm_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attack_charm_type" do
    assert_difference('AttackCharmType.count') do
      post :create, attack_charm_type: {  }
    end

    assert_redirected_to attack_charm_type_path(assigns(:attack_charm_type))
  end

  test "should show attack_charm_type" do
    get :show, id: @attack_charm_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attack_charm_type
    assert_response :success
  end

  test "should update attack_charm_type" do
    patch :update, id: @attack_charm_type, attack_charm_type: {  }
    assert_redirected_to attack_charm_type_path(assigns(:attack_charm_type))
  end

  test "should destroy attack_charm_type" do
    assert_difference('AttackCharmType.count', -1) do
      delete :destroy, id: @attack_charm_type
    end

    assert_redirected_to attack_charm_types_path
  end
end
