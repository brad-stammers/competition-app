class Api::V1::CompetitionsController < ApplicationController
  before_action :set_competition, only: [:show, :update, :destroy]

  # GET /competitions
  def index
    @competitions = Competition.all
    render json: @competitions
  end

  # GET /competitions/1
  def show
    render json: @competition
  end

  # POST /competitions
  def create
    @competition = Competition.new(competition_params)

    if @competition.save
      render json: @competitions
    else
      render json: @competition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /competitions/1
  def update
    if @competition.update(competition_params)
      render json: @competitions
    else
      render json: @competition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /competitions/1
  def destroy
    @competition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition
      @competition = Competition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def competition_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:name, :sport, :location, :start, :finish])
    end
end
