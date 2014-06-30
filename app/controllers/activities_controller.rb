class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.order(created_at: :desc).page params[:page]
    if params[:user_id].present?
      @activities = @activities.where(user_id: params[:user_id])
      @user = User.find(params[:user_id])
    end
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:actor_screen_name, :source_service_name, :source_type, :description, :permalink, :deleted)
    end
end
