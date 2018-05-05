class Api::V1::SessionsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def show
    id = current_user.id
    user = User.find(id)
    render json: user
  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = issue_token(payload)
      response.headers['authToken'] = token
      render json: {user: user, id: user.id }
    else
      render json: { error: "User isnt authorized"}
    end
  end
end
