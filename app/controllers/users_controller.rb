class UsersController < ApplicationController
	before_action :set_user, only: [:show]
  before_action :authenticate_user!
  load_and_authorize_resource

	def index
		@users = User.all.order(:first_name).paginate(:per_page => 15, :page => params[:page])
	end

	def show
    @vehicles = []
    if @user.vehicle_assignments
      @user.vehicle_assignments.each do |x|
        @vehicles << Vehicle.find(x.vehicle.id)
      end
    end
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)
  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to @user, notice: 'user was successfully created.' }
  #       format.json { render :show, status: :created, location: @user }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :role, :first_name, :last_name, :phone_number, :password, :password_confirmation)
    end
end