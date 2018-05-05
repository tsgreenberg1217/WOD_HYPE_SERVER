class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only:[:create]

  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.new(name: params[:name], password: params[:password])
    if user.save
      user.save
      payload = {user_id: user.id}
      token = issue_token(payload)
      # binding.pry
      # response.headers['authToken'] = token
      render json: {user: user, user_id: user.id, jwt: token}
    else
      render json: {message: 'error with signup'}
    end
  end


  # private
  #
  # def user_params
  #   params.require(:user).permit(:name, :password)
  # end

end
