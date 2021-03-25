class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new 
    end

    def create
    end 

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update({
            title: params[:post][:title],
            content: params[:post][:content],
            blogger_id: params[:post][:blogger_id],
            destination_id: params[:post][:destination_id]
        })
        redirect_to @post
    end
end
