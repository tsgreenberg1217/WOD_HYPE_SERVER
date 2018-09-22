class Api::V1::SessionsController < ApplicationController
  skip_before_action :authenticate_request, :only => [:authenticate]

  def get_current_user
    # binding.pry
    user = User.find(current_user.id)
    render json: user
  end

  def authenticate
    command = AuthenticateUser.call(params[:name], params[:password])
    if command.success?
      token = command.result
      user_id = JWT.decode(token,ENV['secret'])[0]['user_id']
      # #binding.pry
      user = User.find(user_id)
      render json: { user: UserSerializer.new(user), jwt: token }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end
