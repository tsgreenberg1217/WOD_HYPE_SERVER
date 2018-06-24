class Api::V1::WodsController < ApplicationController

  def create
    Wod.create(
      name: params[:name],
      rounds: params[:rounds],
      reps: params[:reps],
      time: params[:time],
      date: params[:date],
      notes: params[:notes])
  end

  def index
    render json Wod.all
  end

end
