class SermonsController < ApplicationController
  def index
    @sermons = Sermon.all
  end

  def edit
    @sermon = Sermon.find(params[:id])
  end

  def update
    @sermon = Sermon.find(params[:id])

    if @sermon.update(sermon_params)
      redirect_to @sermon
    else
      render "edit"
    end
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
      params.require(:sermon).permit(:speaker, :subject, :day, :avatar)
    end
end


