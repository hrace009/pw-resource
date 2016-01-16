require 'test_helper'

class ThrowablesControllerTest < ActionController::TestCase
  setup do
    @throwable = throwables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:throwables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create throwable" do
    assert_difference('Throwable.count') do
      post :create, throwable: {  }
    end

    assert_redirected_to throwable_path(assigns(:throwable))
  end

  test "should show throwable" do
    get :show, id: @throwable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @throwable
    assert_response :success
  end

  test "should update throwable" do
    patch :update, id: @throwable, throwable: {  }
    assert_redirected_to throwable_path(assigns(:throwable))
  end

  test "should destroy throwable" do
    assert_difference('Throwable.count', -1) do
      delete :destroy, id: @throwable
    end

    assert_redirected_to throwables_path
  end
end
