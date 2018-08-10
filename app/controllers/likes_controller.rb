class LikesController < ApplicationController
  before_action :find_like, only: [:update]

  def create
    @like = Like.find_or_create_by(pano_id: params[:pano:id])

    if @like.save
      render json: @like, status: :created
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  def update
    @like.update(like_params)
    if @like.save
      render json: @like, status: :accepted
    else
      render json: { errors: @like.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def find_like
    @like = Like.find(params[:id])
  end

  def like_params
    params.require(:like).permit(:pano_id)
  end


end
