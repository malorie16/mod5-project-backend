class PanosController < ApplicationController
  before_action :find_pano, only: [:show, :update, :destroy]

  def index
    @panos = Pano.all
    render json: @panos
  end

  def show
    render json: @pano.get_image, status: :accepted
  end

  def create
    @pano = Pano.find_or_create_by(id: params[:id])
    @pano.image.attach(params[:image])

    @pano.save

      render json: @pano, status: :created
    # else
    #   render json: @pano.errors, status: :unprocessable_entity
    # end
  end

  def destroy
    @pano.destroy
  end

private

  def find_pano
    @pano = Pano.find(params[:id])
  end

  # def pano_params
  #   params.require(:pano).permit(:caption, :image, :user_id)
  # end
end
