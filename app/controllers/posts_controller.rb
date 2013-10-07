class PostsController < ApplicationController
  def index
    # /users/:user_id/posts

    @user = User.find(params[:user_id])
    @posts = @user.posts

    render :index
    # app/views/posts/index.html.erb
  end

  def create
    p = Post.new(params[:post])
    if p.save
      redirect_to "/users"
    else
      render :new
    end
  end
end
