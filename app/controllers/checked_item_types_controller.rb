class CheckedItemTypesController < ApplicationController
  before_action :set_checked_item_type, only: [:show, :edit, :update, :destroy]

  # GET /checked_item_types
  # GET /checked_item_types.json
  def index
    @checked_item_types = CheckedItemType.all
  end

  # GET /checked_item_types/1
  # GET /checked_item_types/1.json
  def show
  end

  # GET /checked_item_types/new
  def new
    @checked_item_type = CheckedItemType.new
  end

  # GET /checked_item_types/1/edit
  def edit
  end

  # POST /checked_item_types
  # POST /checked_item_types.json
  def create
    @checked_item_type = CheckedItemType.new(checked_item_type_params)

    respond_to do |format|
      if @checked_item_type.save
        format.html { redirect_to @checked_item_type, notice: 'Checked item type was successfully created.' }
        format.json { render :show, status: :created, location: @checked_item_type }
      else
        format.html { render :new }
        format.json { render json: @checked_item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checked_item_types/1
  # PATCH/PUT /checked_item_types/1.json
  def update
    respond_to do |format|
      if @checked_item_type.update(checked_item_type_params)
        format.html { redirect_to @checked_item_type, notice: 'Checked item type was successfully updated.' }
        format.json { render :show, status: :ok, location: @checked_item_type }
      else
        format.html { render :edit }
        format.json { render json: @checked_item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checked_item_types/1
  # DELETE /checked_item_types/1.json
  def destroy
    @checked_item_type.destroy
    respond_to do |format|
      format.html { redirect_to checked_item_types_url, notice: 'Checked item type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checked_item_type
      @checked_item_type = CheckedItemType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checked_item_type_params
      # params.require(:checked_item_type).permit(:name, :fields_attributes)
      params.require(:checked_item_type).permit(:name, :checked_item_type_id).tap do |whitelisted|
        whitelisted[:fields_attributes] = params[:checked_item_type][:fields_attributes]
      end
    end
end
