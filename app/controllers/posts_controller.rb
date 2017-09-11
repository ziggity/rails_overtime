class PostsController < ApplicationController
    before_action :set_post, only: [:show]
    def index
        @posts = Post.all
    end

    def new 
        @post = Post.new
    end

    def create 
        @post = Post.new
        @post.user_id = current_user.id
        
        if @post.save
        redirect_to @post, notice: 'Your post was created'
        else
            render :new
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    private 
        def post_params
           params.require(:post).permit(:date, :rationale)
        end

end
