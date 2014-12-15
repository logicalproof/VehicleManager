class WeeklyReportsController < ApplicationController
  before_action :set_weekly_report, only: [:show, :edit, :update, :destroy]
  # scope :vehicle, -> (vehicle) { where vehicle: vehicle }
  # scope :driver, -> (driver) { where driver: driver }
  

  # GET /weekly_reports
  # GET /weekly_reports.json
  def index
    @weekly_reports = WeeklyReport.all.paginate(:per_page => 15, :page => params[:page])
  end

  # GET /weekly_reports/1
  # GET /weekly_reports/1.json
  def show
  end

  # GET /weekly_reports/new
  def new
    @weekly_report = WeeklyReport.new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @user = current_user
  end

  # GET /weekly_reports/1/edit
  def edit
    @vehicle = Vehicle.find(@weekly_report.vehicle_id)
    @user = User.find(@weekly_report.user_id)
  end

  # POST /weekly_reports
  # POST /weekly_reports.json
  def create
    @weekly_report = WeeklyReport.new(weekly_report_params)

    respond_to do |format|
      if @weekly_report.save
        format.html { redirect_to current_user, notice: "Weekly report was successfully created for Vehicle ##{@weekly_report.vehicle.number} with #{@weekly_report.vehicle.current_mileage} miles." }
        format.json { render :show, vehicle: :created, location: @weekly_report }
      else
        format.html { redirect_to current_user, notice: "ERROR: Weekly Vehicle Report was NOT created!!"  }
        format.json { render json: @weekly_report.errors, vehicle: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_reports/1
  # PATCH/PUT /weekly_reports/1.json
  def update
    respond_to do |format|
      if @weekly_report.update(weekly_report_params)
        format.html { redirect_to @weekly_report, notice: 'Weekly report was successfully updated.' }
        format.json { render :show, vehicle: :ok, location: @weekly_report }
      else
        format.html { render :edit }
        format.json { render json: @weekly_report.errors, vehicle: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_reports/1
  # DELETE /weekly_reports/1.json
  def destroy
    @weekly_report.destroy
    respond_to do |format|
      format.html { redirect_to weekly_reports_url, notice: 'Weekly report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def past_reports
    @weekly_reports = WeeklyReport.where("vehicle_id = ?", params[:vehicle])
    @vehicle = Vehicle.find(params[:vehicle])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekly_report
      @weekly_report = WeeklyReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekly_report_params
      params.require(:weekly_report).permit(:appearance, :tires, :lights, :mechanical, :electrical, :fluid_levels, :mileage, :user_id, :vehicle_id, :comments)
    end
end
