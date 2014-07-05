class VehicleServicesController < ApplicationController
  before_action :set_vehicle_service, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_services
  # GET /vehicle_services.json
  def index
    @vehicle_services = VehicleService.all
  end

  # GET /vehicle_services/1
  # GET /vehicle_services/1.json
  def show
  end

  # GET /vehicle_services/new
  def new
    @vehicle_service = VehicleService.new
  end

  # GET /vehicle_services/1/edit
  def edit
  end

  # POST /vehicle_services
  # POST /vehicle_services.json
  def create
    @vehicle_service = VehicleService.new(vehicle_service_params)
    vehicle = Vehicle.find(ServiceRecord.find(@vehicle_service.service_record_id).vehicle_id)
    respond_to do |format|
      if @vehicle_service.save
        format.html { redirect_to vehicle, notice: 'Vehicle service was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_service }
      else
        format.html { render :new }
        format.json { render json: @vehicle_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_services/1
  # PATCH/PUT /vehicle_services/1.json
  def update
    vehicle = Vehicle.find(ServiceRecord.find(@vehicle_service.service_record_id).vehicle_id)
    respond_to do |format|
      if @vehicle_service.update(vehicle_service_params)
        format.html { redirect_to vehicle, notice: 'Vehicle service was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_service }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_services/1
  # DELETE /vehicle_services/1.json
  def destroy
    @vehicle_service.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_services_url, notice: 'Vehicle service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_service
      @vehicle_service = VehicleService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_service_params
      params.require(:vehicle_service).permit(:date_of_service, :mileage_at_service, :service_type_id, :service_record_id)
    end
end
