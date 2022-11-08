class ScientistsController < ApplicationController
  # before_action will call a provided method once before these actions are called
  # this helps keep our code DRY - but not necessary
  before_action :set_scientist, only: [:show, :update, :destroy]

  def index
    scientists = Scientist.all
    render json: scientists, status: :ok
  end
  
  # SHOW required a slightly different response, including the associated planets
  # so we use a custom serializer here
  def show
    render json: @scientist, serializer: ScientistWithPlanetsSerializer
  end

  def create
    scientist = Scientist.create!(scientist_params)
    render json: scientist, status: :created
  end

  def update 
    @scientist.update!(scientist_params)
    render json: @scientist, status: :accepted
  end

  def destroy
    @scientist.destroy
    head :no_content
  end

  private

  def set_scientist
    @scientist = Scientist.find(params[:id])
  end

  def scientist_params
    params.permit(:name, :avatar, :field_of_study)
  end

end
