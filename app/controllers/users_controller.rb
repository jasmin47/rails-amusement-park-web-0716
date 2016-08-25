class UsersController < ApplicationController
before_action :set_user, only: [:edit, :update, :show]
before_action :authorize, only: [:show]


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # binding.pry
    @admin = nil
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :nausea, :happiness, :height, :tickets, :admin)
  end


end
