require 'test_helper'

class ProjectilesControllerTest < ActionController::TestCase
  setup do
    @projectile = projectiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectile" do
    assert_difference('Projectile.count') do
      post :create, projectile: {  }
    end

    assert_redirected_to projectile_path(assigns(:projectile))
  end

  test "should show projectile" do
    get :show, id: @projectile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projectile
    assert_response :success
  end

  test "should update projectile" do
    patch :update, id: @projectile, projectile: {  }
    assert_redirected_to projectile_path(assigns(:projectile))
  end

  test "should destroy projectile" do
    assert_difference('Projectile.count', -1) do
      delete :destroy, id: @projectile
    end

    assert_redirected_to projectiles_path
  end
end
