class VehicleInspectionReportsController < ApplicationController
  before_action :set_vehicle_inspection_report, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_inspection_reports
  # GET /vehicle_inspection_reports.json
  def index
    @vehicle_inspection_reports = VehicleInspectionReport.all.paginate(:per_page => 15, :page => params[:page])
  end

  # GET /vehicle_inspection_reports/1
  # GET /vehicle_inspection_reports/1.json
  def show
  end

  # GET /vehicle_inspection_reports/new
  def new
    @vehicle_inspection_report = VehicleInspectionReport.new
  end

  # GET /vehicle_inspection_reports/1/edit
  def edit
  end

  # POST /vehicle_inspection_reports
  # POST /vehicle_inspection_reports.json
  def create
    @vehicle_inspection_report = VehicleInspectionReport.new(vehicle_inspection_report_params)
    p @vehicle_inspection_report

    respond_to do |format|
      if @vehicle_inspection_report.save
        format.html { redirect_to @vehicle_inspection_report, notice: 'Vehicle inspection report was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_inspection_report }
      else
        format.html { redirect_to new_vehicle_inspection_report_path(:vehicle_service_record_id => @vehicle_inspection_report.vehicle_service_record.id), :notice => @vehicle_inspection_report.errors.full_messages.join(', ') }
        format.json { render json: @vehicle_inspection_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_inspection_reports/1
  # PATCH/PUT /vehicle_inspection_reports/1.json
  def update
    respond_to do |format|
      if @vehicle_inspection_report.update(vehicle_inspection_report_params)
        format.html { redirect_to @vehicle_inspection_report, notice: 'Vehicle inspection report was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_inspection_report }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_inspection_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_inspection_reports/1
  # DELETE /vehicle_inspection_reports/1.json
  def destroy
    @vehicle_inspection_report.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_inspection_reports_url, notice: 'Vehicle inspection report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def past_inspections
    @vehicle_inspection_reports = VehicleInspectionReport.where("vehicle_service_record_id = ?", Vehicle.find(params[:vehicle]).vehicle_service_record.id)
    @vehicle = Vehicle.find(params[:vehicle])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_inspection_report
      @vehicle_inspection_report = VehicleInspectionReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_inspection_report_params
      params.require(:vehicle_inspection_report).permit(:tire_wear, :tire_wear_comment, :emergency_brake_adjustment, :emergency_brake_adjustment_comment, :exhaust, :drive_belts, :radiator_coolant, :radiator_hoses, :heater_hoses, :battery_cables, :spark_plug_wires, :oil_filter, :air_filter, :fuel_filter, :wiper_blades, :headlights, :brake_lights, :tail_lights, :turn_signals, :air_conditioner, :seatbelts, :mirrors, :windshield, :rear_window, :side_windows, :exhaust_comment, :drive_belts_comment, :radiator_coolant_comment, :radiator_hoses_comment, :heater_hoses_comment, :battery_cables_comment, :spark_plug_wires_comment, :oil_filter_comment, :air_filter_comment, :fuel_filter_comment, :wiper_blades_comment, :headlights_comment, :brake_lights_comment, :tail_lights_comment, :turn_signals_comment, :air_conditioner_comment, :seatbelts_comment, :mirrors_comment, :windshield_comment, :rear_window_comment, :side_windows_comment, :mileage, :user_id, :vehicle_service_record_id, :oil_change, :oil_change_comments, :transmission_service, :transmission_service_comments, :brake_service, :brake_service_comments, :tires_rotated, :tires_rotated_comment, :battery, :battery_comment)
    end
end
