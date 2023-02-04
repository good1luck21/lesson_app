class PostsController < ApplicationController
  def index
    @post=Post.new
    @posts=Post.all
  end
  
  def edit
    # params[:kang]
    p "======edit======="
    p params[:kang] # no problem
    @post=Post.find_by(id: params[:kang]) # ここが問題かも
    p "=======edit @post========="
    p @post
    # edit action no problem
  end
  
  def create
    p "==========params check============"
    p params
    p "======================"
    @post = Post.new(content: params[:post][:content])
    @post.save
    redirect_to root_path
  end
  def update
      @post=Post.find_by(id: params[:sato]) # params[:sato] -> :sato routes.rb patch 'posts/:sato/edit'
      p "==========params check============"
    p params
     p "======================"
     # update
     # 必要な値 contentの内容を更新したい
     # params[:sato] routes.rb
     # params[:sato][:kang]
      p "==========params check============"
      p "urlのIDは#{params[:sato]}"
      p "画面から入力された値は#{params[:kang]}"
      p "======================"
     
      @post.update(content: params[:kang])
      redirect_to  root_path
   # p "params update start"
   # p params
   # p "params update end"
  
  end
  
end
