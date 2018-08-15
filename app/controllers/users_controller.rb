class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

# GET /users/1
  def show
    @user = User.find(params[:id])
    render json: @user.formatted_json
  end

  # POST /users
  def create
    @user = User.find_or_create_by(email: params[:email])

    if @user.valid?
      @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:email, :name, :password)
  end
end
