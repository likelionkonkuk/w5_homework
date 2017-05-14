class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_posts, only: [:show, :edit, :update, :destroy]
    
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
    
    def update
        if @post.update(post_params)
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
    
    def post_params
        params.require(:post).permit(:title, :content)
    end
    
    def find_posts
        @post = Post.find(params[:id])
    end
    
    def second
        @secondPicked = @post.sample(5).sort
    end
    
    def third
        @thirdPicked = @secondPicked.sample(2).sort
    end
    
    def result
        @resultMenu = @thirdPicked.sample(1)
    end
end
