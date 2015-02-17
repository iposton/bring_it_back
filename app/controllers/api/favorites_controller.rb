#   module API
#    class FavoritesController < ApplicationController
#     protect_from_forgery with: :null_session
       
#     respond_to :html, :xml, :json  

#     def index
#       respond_with Favorite.all
#     end

#     def show
#       respond_with Favorite.find(params[:id])
#     end

#     def create
#      # favorite = current_user.favorites.build(favorite_params)  
#       favorite = Favorite.new(favorite_params)
#       user = User.find(params[:user_id])
#       favorite.user = user   

#       if favorite.save
#         render json: favorite, status: 201
#       else
#         render json: {errors: favorite.errors}, status: 422
#       end
#     end

#     def update
#     favorite = Favorite.find(params[:user_id])
# 		if favorite.update(favorite_params)
#         render json: favorite, status: 200
#       else
#         render json: {errors: favorite.errors}, status: 422
#       end
#     end

#      def destroy
#       favorite = Favorite.find(params[:id])
#       favorite.destroy
#       head 204
#     end

#     private
    
#       def favorite_params
#         params.require(:favorite).permit(:title)
#       end
#   end
# end
