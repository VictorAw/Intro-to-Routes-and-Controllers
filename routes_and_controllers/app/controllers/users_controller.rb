class UsersController < ApplicationController
  def index
    render json: User.all
    # render json: self.to_json # UserController#index is not open for reading
    # render json: {"a_key" => "a value"}
    # render text: "I'm in the index action!"
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render( json: user.errors.full_messages, status: :unprocessable_entity )
    end
  end

  def show
    render json: User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to :users
  end

  def destroy
    User.destroy(params[:id])
    redirect_to users_path
  end

  private
  def user_params
    params[:user].permit(:name, :email)
  end
end
