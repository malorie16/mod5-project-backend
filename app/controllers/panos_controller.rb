class PanosController < ApplicationController
  before_action :find_pano, only: [:show, :update, :destroy]

  def index
    @panos = Pano.all
    render json: @panos.map(&:formatted_json)
  end

  def show
    render json: @pano.formatted_json, status: :accepted
  end

  def create
    @pano = Pano.new(pano_params)

    if @pano.save
      render json: @pano.formatted_json, status: :created
    else
      render json: @pano.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pano.destroy
  end

private

  def find_pano
    @pano = Pano.find(params[:id])
  end

  def pano_params
    params.require(:pano).permit(:caption, :pano_url, :user_id)
  end
end
