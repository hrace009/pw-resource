require 'test_helper'

class ShardTypesControllerTest < ActionController::TestCase
  setup do
    @shard_type = shard_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shard_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shard_type" do
    assert_difference('ShardType.count') do
      post :create, shard_type: {  }
    end

    assert_redirected_to shard_type_path(assigns(:shard_type))
  end

  test "should show shard_type" do
    get :show, id: @shard_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shard_type
    assert_response :success
  end

  test "should update shard_type" do
    patch :update, id: @shard_type, shard_type: {  }
    assert_redirected_to shard_type_path(assigns(:shard_type))
  end

  test "should destroy shard_type" do
    assert_difference('ShardType.count', -1) do
      delete :destroy, id: @shard_type
    end

    assert_redirected_to shard_types_path
  end
end
