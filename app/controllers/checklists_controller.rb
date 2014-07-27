class ChecklistsController < ApplicationController
  before_action :set_checklist, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /checklists
  # GET /checklists.json
  def index
    @checklists = Checklist.all
  end

  # GET /checklists/1
  # GET /checklists/1.json
  def show
  end

  # GET /checklists/new
  def new
    @checklist = Checklist.new(checklist_type_id: params[:checklist_type_id], user_id: current_user.id, vehicle_id: params[:vehicle_id])
  end

  # GET /checklists/1/edit
  def edit

  end

  # POST /checklists
  # POST /checklists.json
  def create
    @checklist = Checklist.new(checklist_params)

    respond_to do |format|
      if @checklist.save
        format.html { redirect_to @checklist, notice: 'Checklist was successfully created.' }
        format.json { render :show, status: :created, location: @checklist }
      else
        format.html { render :new }
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checklists/1
  # PATCH/PUT /checklists/1.json
  def update
    respond_to do |format|
      if @checklist.update(checklist_params)
        format.html { redirect_to @checklist, notice: 'Checklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @checklist }
      else
        format.html { render :edit }
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklists/1
  # DELETE /checklists/1.json
  def destroy
    @checklist.destroy
    respond_to do |format|
      format.html { redirect_to checklists_url, notice: 'Checklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checklist
      @checklist = Checklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checklist_params
      # params.require(:checklist).permit(:name, :comments, :checklist_type_id, :properties)
      # params.require(:checklist).permit(:name, :comments, :checklist_type_id).tap do |whitelisted|
      #   whitelisted[:checklist_type] = params[:checklist_type][:properties]
      # end
      params.require(:checklist).permit(:name, :comments, :user_id, :vehicle_id, :checklist_type_id).tap do |whitelisted|
        whitelisted[:properties] = params[:checklist][:properties]
      end
    end
end
