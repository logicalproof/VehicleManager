class VehicleAssignmentsController < ApplicationController
  before_action :set_vehicle_assignment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource
  
  # GET /vehicle_assignments
  # GET /vehicle_assignments.json
  def index
    @vehicle_assignments = VehicleAssignment.all
  end

  # GET /vehicle_assignments/1
  # GET /vehicle_assignments/1.json
  def show
  end

  # GET /vehicle_assignments/new
  def new
    if params[:vehicle_id]
      @vehicle_assignment = VehicleAssignment.new(:vehicle_id => params[:vehicle_id])
    elsif params[:user_id]
      @vehicle_assignment = VehicleAssignment.new(:user_id => params[:user_id])
    else
      @vehicle_assignment = VehicleAssignment.new
    end
  end

  # GET /vehicle_assignments/1/edit
  def edit
  end

  # POST /vehicle_assignments
  # POST /vehicle_assignments.json
  def create
    @vehicle_assignment = VehicleAssignment.new(vehicle_assignment_params)

    respond_to do |format|
      if @vehicle_assignment.save
        format.html { redirect_to vehicle_url(@vehicle_assignment.vehicle), notice: 'Vehicle assignment was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_assignment }
      else
        format.html { render :new }
        format.json { render json: @vehicle_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_assignments/1
  # PATCH/PUT /vehicle_assignments/1.json
  def update
    respond_to do |format|
      if @vehicle_assignment.update(vehicle_assignment_params)
        format.html { redirect_to vehicle_url(@vehicle_assignment.vehicle), notice: 'Vehicle assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_assignment }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_assignments/1
  # DELETE /vehicle_assignments/1.json
  def destroy
    @vehicle_assignment.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_url(@vehicle_assignment.vehicle), notice: 'Vehicle assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_assignment
      @vehicle_assignment = VehicleAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_assignment_params
      params.require(:vehicle_assignment).permit(:user_id, :vehicle_id)
    end
end
