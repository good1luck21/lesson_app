class PostsController < ApplicationController
  def index
    @post=Post.new
    @posts=Post.all
  end
  
  def edit
  end
  
  def create
    p "==========params check============"
    p params
    p "======================"
    @post = Post.new(content: params[:post][:content])
    @post.save
    redirect_to root_path
  end
end
