  module API
  class FavoritesController < ApplicationController
    protect_from_forgery with: :null_session
       
    respond_to :html, :xml, :json  

    def index
      respond_with Favorite.all
    end

    def show
      respond_with Favorite.find(params[:id])
    end

    def create
    	user = User.find(params[:user_id])
		favorite = user.favorites.create(favorite_params)
    end

    def update
    	@user = User.find(params[:user_id])
		@favorite = @user.favorites.find(params[:id])
		if favorite.update(favorite_params)
        render json: favorite, status: 200
      else
        render json:, status: 422
      end
    end

    private
    
      def favorite_params
        params.require(:favorite).permit()
      end
  end
end
