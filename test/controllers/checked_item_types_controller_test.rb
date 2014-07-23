require 'test_helper'

class ChecklistTypesControllerTest < ActionController::TestCase
  setup do
    @checklist_type = checklist_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checklist_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checklist_type" do
    assert_difference('ChecklistType.count') do
      post :create, checklist_type: { name: @checklist_type.name }
    end

    assert_redirected_to checklist_type_path(assigns(:checklist_type))
  end

  test "should show checklist_type" do
    get :show, id: @checklist_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checklist_type
    assert_response :success
  end

  test "should update checklist_type" do
    patch :update, id: @checklist_type, checklist_type: { name: @checklist_type.name }
    assert_redirected_to checklist_type_path(assigns(:checklist_type))
  end

  test "should destroy checklist_type" do
    assert_difference('ChecklistType.count', -1) do
      delete :destroy, id: @checklist_type
    end

    assert_redirected_to checklist_types_path
  end
end
