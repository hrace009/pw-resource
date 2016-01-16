require 'test_helper'

class ElfWingsControllerTest < ActionController::TestCase
  setup do
    @elf_wing = elf_wings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elf_wings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elf_wing" do
    assert_difference('ElfWing.count') do
      post :create, elf_wing: {  }
    end

    assert_redirected_to elf_wing_path(assigns(:elf_wing))
  end

  test "should show elf_wing" do
    get :show, id: @elf_wing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elf_wing
    assert_response :success
  end

  test "should update elf_wing" do
    patch :update, id: @elf_wing, elf_wing: {  }
    assert_redirected_to elf_wing_path(assigns(:elf_wing))
  end

  test "should destroy elf_wing" do
    assert_difference('ElfWing.count', -1) do
      delete :destroy, id: @elf_wing
    end

    assert_redirected_to elf_wings_path
  end
end
