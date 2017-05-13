class PostsController < ApplicationController

  before_action :find_posts, only: [:show, :edit, :update, :destroy]


  def home
  end
  
  def contact
  end
  
  def about
  end
  
  def index
  	@posts = Post.all.order("created_at DESC")
  end
  
  def show
  end
  
  def new
  	@post = Post.new
    
  end

  def create
  	@post = Post.new(post_params)

  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end  	
  end

    def edit
    end 
    
  def destroy
  	@post.destroy
  	redirect_to posts_path
  end
    
  def update
  	if @post.update(post_params)
  		redirect_to @post
  	else
  		render 'edit'
  	end
  end


  private
  
  def post_params
  	params.require(:post).permit(:title, :name, :phone, :major, :studentid, :time, :place, :price, :content, :image)
  end


  def find_posts
  	@post = Post.find(params[:id])
  end




end
