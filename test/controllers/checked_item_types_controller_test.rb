require 'test_helper'

class CheckedItemTypesControllerTest < ActionController::TestCase
  setup do
    @checked_item_type = checked_item_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checked_item_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checked_item_type" do
    assert_difference('CheckedItemType.count') do
      post :create, checked_item_type: { name: @checked_item_type.name }
    end

    assert_redirected_to checked_item_type_path(assigns(:checked_item_type))
  end

  test "should show checked_item_type" do
    get :show, id: @checked_item_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checked_item_type
    assert_response :success
  end

  test "should update checked_item_type" do
    patch :update, id: @checked_item_type, checked_item_type: { name: @checked_item_type.name }
    assert_redirected_to checked_item_type_path(assigns(:checked_item_type))
  end

  test "should destroy checked_item_type" do
    assert_difference('CheckedItemType.count', -1) do
      delete :destroy, id: @checked_item_type
    end

    assert_redirected_to checked_item_types_path
  end
end
