require 'test_helper'

class TeleportIncensesControllerTest < ActionController::TestCase
  setup do
    @teleport_incense = teleport_incenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teleport_incenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teleport_incense" do
    assert_difference('TeleportIncense.count') do
      post :create, teleport_incense: {  }
    end

    assert_redirected_to teleport_incense_path(assigns(:teleport_incense))
  end

  test "should show teleport_incense" do
    get :show, id: @teleport_incense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teleport_incense
    assert_response :success
  end

  test "should update teleport_incense" do
    patch :update, id: @teleport_incense, teleport_incense: {  }
    assert_redirected_to teleport_incense_path(assigns(:teleport_incense))
  end

  test "should destroy teleport_incense" do
    assert_difference('TeleportIncense.count', -1) do
      delete :destroy, id: @teleport_incense
    end

    assert_redirected_to teleport_incenses_path
  end
end
