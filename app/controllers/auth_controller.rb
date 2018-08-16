class AuthController < ApplicationController

  def login

    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      render json: { token: issue_token({ id: user.id }) }
    else
      render json: { error: "Auth Failed" }, status: 401
    end
  end

  def get_current_user
    render json: {user: current_user, panos: current_user.panos}
  end

end
