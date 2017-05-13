class PostsController < ApplicationController

    before_action :authenticate_user!, except: [ :index, :show ]
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(posts_params)
        
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        if @post.update(posts_params)
            redirect_to @post
        else
            render 'edit'
        end
    end
    
    def destroy
        @post.destroy
        redirect_to posts_path
    end

    private
    
    def find_post
        @post = Post.find(params[:id])
    end
    
    def posts_params
        params.require(:post).permit(:title, :content, :image, :category_id)
    end
end




