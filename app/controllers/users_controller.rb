class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password]
    )
    if user.save
      render json: { message: "user created successfully"}, status: :created
    else
      render json: {errors: user.errors.full_messages }, status: :bad_request
    end
  end
end