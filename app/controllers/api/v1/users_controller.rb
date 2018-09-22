class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_request, only:[:create]
# before_action :authenticate_request

def index
  @users = User.all
  render json: @users
end

def create
  user = User.new(name: params[:name], password: params[:password])
  if user.save
    user.save
    token = JsonWebToken.encode(user_id: user.id)
    render json: {user: UserSerializer.new(user), jwt: token}
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
