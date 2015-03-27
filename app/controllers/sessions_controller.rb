class SessionsController < ApplicationController
  before_action :require_current_user, only: :destroy

  def new
    @user = User.new
  end

  def create
    # login the user, then redirect to content
    @user = User.find_by(username: session_params[:username])

    if @user && @user.authenticate(session_params[:password])
      login!(@user)

      redirect_to family_trees_url  
    else
      redirect_to new_session_url
    end
  end

  def destroy
    logout!

    redirect_to new_session_url
  end

  private

  def session_params
    @session_params ||= params.require(:sessions).permit(:username, :password)
  end
end
