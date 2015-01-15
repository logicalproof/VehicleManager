class VehicleServiceRecordController < ApplicationController
  before_action :set_vehicle_service_record, only: [:show, :edit, :update, :destroy]
  def show
  end

  # GET /vehicle_service_record/1/edit
  def edit
  end

  # PATCH/PUT /vehicle_service_record/1
  # PATCH/PUT /vehicle_service_record/1.json
  def update
    respond_to do |format|
      if @vehicle_service_record.update(vehicle_service_record_params)
        format.html { redirect_to @vehicle_service_record, notice: 'Vehicle Service Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_service_record }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_service_record.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_service_record
      @vehicle_service_record = VehicleServiceRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_service_record_params
      params.require(:vehicle_service_record).permit(:oil_change_mileage, 
                                                      :transmission_service_mileage, 
                                                      :oil_filter_mileage, 
                                                      :air_filter_mileage, 
                                                      :battery_mileage, 
                                                      :tires_rotated_mileage, 
                                                      :oil_change, 
                                                      :brake_service,
                                                      :brake_service_mileage, 
                                                      :transmission_service, 
                                                      :oil_filter, 
                                                      :air_filter, 
                                                      :battery, 
                                                      :tires_rotated, 
                                                      :last_inspection_date, 
                                                      :vehicle_id) 
    end
end
