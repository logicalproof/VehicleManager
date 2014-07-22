class UsersController < ApplicationController
	before_action :set_user, only: [:show]
  before_action :authenticate_user!
  load_and_authorize_resource

	def index
		@users = User.all
	end

	def show
    @vehicles = []
    if @user.vehicle_assignments
      @user.vehicle_assignments.each do |x|
        @vehicles << Vehicle.find(x.vehicle.id)
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :role)
    end
end