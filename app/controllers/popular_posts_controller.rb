class PopularPostsController < ApplicationController
  def index
    @posts = Post.all.limit(10).order(:popularity)
  end
end
