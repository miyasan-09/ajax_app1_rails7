class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")
  end

  def new
  end

  def create
    post = Post.create(content: params[:content])
    #redirect_to action: :index
    render json: { post: post }
    #なぜ＠postではない？非同期通信でビューに渡す必要がないから？
  end
end
