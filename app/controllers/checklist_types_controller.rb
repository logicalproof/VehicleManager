class ChecklistTypesController < ApplicationController
  before_action :set_checklist_type, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /checklist_types
  # GET /checklist_types.json
  def index
    @checklist_types = ChecklistType.all
  end

  # GET /checklist_types/1
  # GET /checklist_types/1.json
  def show
  end

  # GET /checklist_types/new
  def new
    @checklist_type = ChecklistType.new
  end

  # GET /checklist_types/1/edit
  def edit
  end

  # POST /checklist_types
  # POST /checklist_types.json
  def create
    @checklist_type = ChecklistType.new(checklist_type_params)

    respond_to do |format|
      if @checklist_type.save
        format.html { redirect_to @checklist_type, notice: 'Checked item type was successfully created.' }
        format.json { render :show, status: :created, location: @checklist_type }
      else
        format.html { render :new }
        format.json { render json: @checklist_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checklist_types/1
  # PATCH/PUT /checklist_types/1.json
  def update
    respond_to do |format|
      if @checklist_type.update(checklist_type_params)
        format.html { redirect_to @checklist_type, notice: 'Checked item type was successfully updated.' }
        format.json { render :show, status: :ok, location: @checklist_type }
      else
        format.html { render :edit }
        format.json { render json: @checklist_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklist_types/1
  # DELETE /checklist_types/1.json
  def destroy
    @checklist_type.destroy
    respond_to do |format|
      format.html { redirect_to checklist_types_url, notice: 'Checked item type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checklist_type
      @checklist_type = ChecklistType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checklist_type_params
      # params.require(:checklist_type).permit(:name, :fields_attributes)
      params.require(:checklist_type).permit(:name, :vehicle_report, :checklist_type_id).tap do |whitelisted|
        whitelisted[:fields_attributes] = params[:checklist_type][:fields_attributes]
      end
    end
end
