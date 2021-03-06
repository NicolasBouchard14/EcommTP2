class AuthenticationController < ApplicationController

  skip_before_action :authenticate_user!

  def authenticate_user

    user = User.find_for_database_authentication(email: params[:email])

    if user.nil?
      render json: {errors: ['User not found']}, status: :unauthorized
      return
    end

    if user.valid_password?(params[:password])

      render json: payload(user)

    else

      render json: {errors: ['Invalid Username/Password']}, status: :unauthorized

    end

  end


  private


  def payload(user)

    return nil unless user and user.id

    {

        auth_token: JWTWrapper.encode({user_id: user.id}),

        user: {id: user.id, email: user.email}

    }

  end

end