class SermonsController < ApplicationController
  def index
    @sermons = Sermon.all
  end

  def new
    @sermon = Sermon.new
  end

  def create
    @sermon = Sermon.new(sermon_params)

    if @sermon.save
      redirect_to sermons_path, notice: "The sermon has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @sermon = Sermon.find(params[:id])
    @sermon.destroy
    redirect_to sermons_path, notice: "The sermon has been deleted."
  end

  private
    def sermon_params
      params.require(:sermon).permit(:name, :subject, :day, :avatar)
    end
end


