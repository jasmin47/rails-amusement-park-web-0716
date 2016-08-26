class AttractionsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @attractions = Attraction.all
  end

  def show
    @user = User.find(session[:user_id])
    @attraction = Attraction.find(params[:id])
    # binding.pry
    @ride = Ride.create(user_id: @user.id, attraction_id: @attraction.id)
  end

end
