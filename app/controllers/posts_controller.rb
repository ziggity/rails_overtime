class PostsController < ApplicationController
    def index
    end

    def new 
        @post = Post.new
    end

    def create 
        @post = Post.new
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
           (params.require(:post).permit(:date, :rationale))

end
