class CowsController < ApplicationController

  def index
    @cows = [{:name => "Bessie", :id => 1}, {:name => "Frank", :id => 2}]
  end

  def show
    @cow = Cow.find_by(name: params[:id])
  end

  def create
    @cow = Cow.new(params[:cow])
    if @cow.save
      redirect_to cow_path(@cow)
    else
      render :new
    end
  end

end
