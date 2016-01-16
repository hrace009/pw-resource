require 'test_helper'

class ProjectileTypesControllerTest < ActionController::TestCase
  setup do
    @projectile_type = projectile_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectile_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectile_type" do
    assert_difference('ProjectileType.count') do
      post :create, projectile_type: {  }
    end

    assert_redirected_to projectile_type_path(assigns(:projectile_type))
  end

  test "should show projectile_type" do
    get :show, id: @projectile_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projectile_type
    assert_response :success
  end

  test "should update projectile_type" do
    patch :update, id: @projectile_type, projectile_type: {  }
    assert_redirected_to projectile_type_path(assigns(:projectile_type))
  end

  test "should destroy projectile_type" do
    assert_difference('ProjectileType.count', -1) do
      delete :destroy, id: @projectile_type
    end

    assert_redirected_to projectile_types_path
  end
end
