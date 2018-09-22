require 'pry'
class Api::V1::WodsController < ApplicationController

  def create
    # binding.pry
    wod = Wod.create(
      cat: params[:cat],
      name: params[:name],
      rounds: params[:rounds],
      reps: params[:reps],
      time: params[:time],
      date: params[:date],
      weight: params[:weight],
      notes: params[:notes])

      render json: wod
  end

  def index
    render json: Wod.order(date: :desc).limit(10)
  end

  def show
    render json: Wod.find(params[:id])
  end

end
