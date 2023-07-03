class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
    render :index
  end

  def show
    @experience = Experience.find_by(id: params[:id])
    render :show
  end

  def new
    @experience = Experience.new
    render :show
  end

  def create
    @experience = Experience.new(
      name: params[:name],
      note: params[:note],
      date: params[:date],
      address: params[:address]
    )
    @experience.save
    render :show
  end

end
