class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /vehicles
  # GET /vehicles.json
  def index
    if params[:search]
      @vehicles = Vehicle.search(params[:search]).order("created_at DESC").paginate(:per_page => 15, :page => params[:page])
    else
      @vehicles = Vehicle.all.order("created_at DESC").includes(:user).paginate(:per_page => 15, :page => params[:page]) 
      # @vehicles = Vehicle.all.order("cast(number as int) asc").paginate(:per_page => 15, :page => params[:page]) 
      #vehicle number is cast from string to int so that number is the sort field
    end
  end

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
  end

  # GET /vehicles/new
  def new
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit
  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user_id = current_user.id
    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def overdue_services
    @overdue_services = []
    @vehicles = []
    Vehicle.all.includes(:user, :mileages, :vehicle_inspection_reports).each do |vehicle|
      @overdue_services << vehicle.mileages.last.check_for_upcoming_service
      unless vehicle.vehicle_service_record.check_for_upcoming_service.empty?
        @vehicles << vehicle
      else
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
      @vehicle.user_id = current_user.id
      @vehicle_stats = @vehicle.vehicle_service_record.service_stats
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:number, 
                                      :current_mileage, 
                                      :make, 
                                      :model, 
                                      :year, 
                                      :purchase_date,
                                      :sold,
                                      :sold_date,
                                      :plate_number,
                                      :vin_number,
                                      :gross_weight,
                                      :gas_card,
                                      :synthetic)
    end
end
