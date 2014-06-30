class TweetsController < ApplicationController
  before_action :set_tweet, only: :show

  def index
    @tweets = Tweet.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:tweet_id, :screen_name, :tweet_text, :deleted)
    end
end
