class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]

   def current
    respond_to do |format|
      format.json { render json: {
          id: current_user.id,
          # first_name: current_user.first_name,
          # last_name: current_user.last_name,
          username: current_user.username
        }
      }
    end
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )

    if @user.save
      redirect_to new_session_url
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.authenticate(params[:user][:current_password])
      @user.update(password_params)

      redirect_to user_family_tree_url(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)
  end

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  # def user_is_current_user
  #   user = User.find(params[:id])

  #   if current_user
  #     redirect_to user_tree_path(current_user) unless user == current_user
  #   else
  #     redirect_to new_session_path
  #   end
  # end
 end
