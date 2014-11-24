class SermonsController < ApplicationController
  before_action :set_sermon, only: [:edit, :update, :destroy]

  def index
    @sermons = Sermon.recent.page(params[:page]).per(5)
  end

  def new
    @sermon = Sermon.new
  end

  def edit
  end

  def create
    @sermon = Sermon.new(sermon_params)

    respond_to do |format|
      if @sermon.save
        format.html { redirect_to sermons_path, notice: "The sermon has been uploaded." }
        format.json { render json: @sermon, status: 201, location: @sermon }
      else
        format.html { render :new }
        format.json { render json: @sermon.errors, status: 422 }
      end
    end
  end

  def update
    if @sermon.update(sermon_params)
      redirect_to sermons_path, notice: "Sermon was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @sermon.destroy
    # redirect_to sermons_path, notice: "The sermon has been deleted."

    respond_to do |format|
      format.html { redirect_to sermons_path }
      format.json { head :ok }
      format.js { render layout: false }
    end
  end

  private
    def set_sermon
      @sermon = Sermon.find(params[:id])
    end

    def sermon_params
      params.require(:sermon).permit(:speaker, :subject, :day, :avatar)
    end
end


