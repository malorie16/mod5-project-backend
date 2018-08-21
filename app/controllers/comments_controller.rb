class CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :update]

  def index
    @comments = Comment.all
    render json: @comments.map(&:formatted_json)
  end

  def show
    render json: @comment.pano.comments, status: :accepted
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment.pano.comments, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    @comment.update(comment_params)
    if @comment.save
      render json: @comment, status: :accepted
    else
      render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:pano_id, :comment)
  end
end
