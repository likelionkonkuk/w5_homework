class InformsController < ApplicationController
    before_action :authenticate_user!, except: [ :index, :show ]
    before_action :find_inform, only: [:show, :edit, :update, :destroy]
	def index
		if params[:category].blank?
			@informs = Inform.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@informs = Inform.where(category_id: @category_id).order("created_at DESC")
		end
	end
    
    def new
        @inform = Inform.new
    end
    
    def create
        @inform = Inform.new(informs_params)
        
        if @inform.save
            redirect_to @inform
        else
            render 'new'
        end
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        if @inform.update(informs_params)
            redirect_to @inform
        else
            render 'edit'
        end
    end
    
    def destroy
        @inform.destroy
        redirect_to informs_path
    end

    private
    
    def find_inform
        @inform = Inform.find(params[:id])
    end
    
    def informs_params
        params.require(:inform).permit(:title, :content, :image, :category_id)
    end
end