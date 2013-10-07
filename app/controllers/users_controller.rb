class UsersController < ApplicationController
  # GET
  def index
    # list
    params[:filter] #active
    @users = User.all.filter(params[:filter] || "all")
  end

  # POST
  # /users?force_admin=true
  # {"name" => "nate"}
  def create
    # adding to the collection
  end

  # DELETE (POST)
  def destroy
    p = Post.find params[:id]
    p.destroy
    # removing from the collection
  end

  # GET
  def show
    p = Post.find params[:id]
    # show one item
  end

  # PUT (POST)
  def update
    p = Post.find params[:id]
    # change existing item's properties
  end

  # GET
  def new
    # show the new user form
  end

   # GET
  def edit
    p = Post.find params[:id]
    # show the edit user form
  end

end
