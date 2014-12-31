class Member::SermonsController < ApplicationController
  before_action :authenticate_user!

  def index
    @sermons = Sermon.all
  end

  private
    def sermon_params
      params.require(:sermon).permit(:speaker, :subject, :day, :avatar)
    end
end


