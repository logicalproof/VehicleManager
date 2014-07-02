require 'test_helper'

class VehicleServicesControllerTest < ActionController::TestCase
  setup do
    @vehicle_service = vehicle_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_service" do
    assert_difference('VehicleService.count') do
      post :create, vehicle_service: { date_of_service: @vehicle_service.date_of_service, mileage_at_service: @vehicle_service.mileage_at_service }
    end

    assert_redirected_to vehicle_service_path(assigns(:vehicle_service))
  end

  test "should show vehicle_service" do
    get :show, id: @vehicle_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_service
    assert_response :success
  end

  test "should update vehicle_service" do
    patch :update, id: @vehicle_service, vehicle_service: { date_of_service: @vehicle_service.date_of_service, mileage_at_service: @vehicle_service.mileage_at_service }
    assert_redirected_to vehicle_service_path(assigns(:vehicle_service))
  end

  test "should destroy vehicle_service" do
    assert_difference('VehicleService.count', -1) do
      delete :destroy, id: @vehicle_service
    end

    assert_redirected_to vehicle_services_path
  end
end
