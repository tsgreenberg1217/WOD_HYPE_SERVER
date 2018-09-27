require 'pry'
class Api::V1::WodsController < ApplicationController
  before_action :authenticate_request

  def create
      current_user.wods.create(
      cat: params[:cat],
      name: params[:name],
      rounds: params[:rounds],
      reps: params[:reps],
      time: params[:time],
      date: params[:date],
      weight: params[:weight],
      notes: params[:notes])

      render json: current_user.wods.last
  end

  def index
    # render json: current_user.wods.order(date: :desc).limit(10)
    render json: Wod.all
  end

  def show
    render json: Wod.find(params[:id])
  end

end
