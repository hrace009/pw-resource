require 'test_helper'

class SkilltomesControllerTest < ActionController::TestCase
  setup do
    @skilltome = skilltomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skilltomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skilltome" do
    assert_difference('Skilltome.count') do
      post :create, skilltome: {  }
    end

    assert_redirected_to skilltome_path(assigns(:skilltome))
  end

  test "should show skilltome" do
    get :show, id: @skilltome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skilltome
    assert_response :success
  end

  test "should update skilltome" do
    patch :update, id: @skilltome, skilltome: {  }
    assert_redirected_to skilltome_path(assigns(:skilltome))
  end

  test "should destroy skilltome" do
    assert_difference('Skilltome.count', -1) do
      delete :destroy, id: @skilltome
    end

    assert_redirected_to skilltomes_path
  end
end
