class MaximsController < ApplicationController
  before_action :find_maxims, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [ :index ]
  
  def index
    @maxims = Maxim.all.order("created_at DESC")
  end
  
  def show
  end

  def new
    @maxim = Maxim.new
  end

  def create
    @maxim = Maxim.new(maxim_params)
    if @maxim.save
      redirect_to @maxim
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @maxim.update(maxim_params)
      redirect_to @maxim
    else
      render 'edit'
    end
  end

  def destroy
    @maxim.destroy
    redirect_to root_path
  end
  
  
  def random
    @maxim = Maxim.order("RANDOM()").first
    redirect_to @maxim
  end
  
  private
  def maxim_params
    params.require(:maxim).permit(
      :title,
      :content,
      :image)
  end

  def find_maxims
    @maxim = Maxim.find(params[:id])
  end
end
