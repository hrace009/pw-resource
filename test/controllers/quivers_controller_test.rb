require 'test_helper'

class QuiversControllerTest < ActionController::TestCase
  setup do
    @quiver = quivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quiver" do
    assert_difference('Quiver.count') do
      post :create, quiver: {  }
    end

    assert_redirected_to quiver_path(assigns(:quiver))
  end

  test "should show quiver" do
    get :show, id: @quiver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quiver
    assert_response :success
  end

  test "should update quiver" do
    patch :update, id: @quiver, quiver: {  }
    assert_redirected_to quiver_path(assigns(:quiver))
  end

  test "should destroy quiver" do
    assert_difference('Quiver.count', -1) do
      delete :destroy, id: @quiver
    end

    assert_redirected_to quivers_path
  end
end
