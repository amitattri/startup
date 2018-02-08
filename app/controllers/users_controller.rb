class UsersController < ApplicationController
  before_action :authenticate_user!
  before_filter :set_post, only: [:edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'User successfully created'
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = 'User successfully updated'
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(
        :name,
        :email,
    )
  end

  def set_user
    @user = User.find params[:id]
  end

end