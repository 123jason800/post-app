class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index 
        render json: Post.all
    end

    def create
        @post = Post.create(content:params[:content],user_id:params[:user_id])
        @post.save
        redirect_to posts_url
    end

    def update
        @post = Post.find_by(id: params[:id])
        @post.update(content: params[:content])
        redirect_to posts_url
    end

    def destroy
        @post = Post.find_by(id: params[:id])
        @post.destroy
        redirect_to posts_url
    end
end
