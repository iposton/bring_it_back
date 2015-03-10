module API
  class UsersController < ApplicationController

    protect_from_forgery with: :null_session

    respond_to :html, :xml, :json

     def index
      respond_with User.all
     end

    def show
      respond_with User.find(params[:id])
      # render json:

    end

    def create
      user = User.new(user_params)
      if user.save
        render json: user, status: 201
      else
        render json: {errors: user.errors}, status: 422
      end
    end

    # def show
    #   respond_with User.find(params[:id])
    #   # render json:

    # end

    def update
      user = User.find(params[:id])
      if user.update(user_params)
        render json: user, status: 200
      else
        render json: {errors: user.errors}, status: 422
      end
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      head 204
    end

    private

      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end

  end
end