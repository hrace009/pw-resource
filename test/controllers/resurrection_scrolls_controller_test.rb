require 'test_helper'

class ResurrectionScrollsControllerTest < ActionController::TestCase
  setup do
    @resurrection_scroll = resurrection_scrolls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resurrection_scrolls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resurrection_scroll" do
    assert_difference('ResurrectionScroll.count') do
      post :create, resurrection_scroll: {  }
    end

    assert_redirected_to resurrection_scroll_path(assigns(:resurrection_scroll))
  end

  test "should show resurrection_scroll" do
    get :show, id: @resurrection_scroll
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resurrection_scroll
    assert_response :success
  end

  test "should update resurrection_scroll" do
    patch :update, id: @resurrection_scroll, resurrection_scroll: {  }
    assert_redirected_to resurrection_scroll_path(assigns(:resurrection_scroll))
  end

  test "should destroy resurrection_scroll" do
    assert_difference('ResurrectionScroll.count', -1) do
      delete :destroy, id: @resurrection_scroll
    end

    assert_redirected_to resurrection_scrolls_path
  end
end
