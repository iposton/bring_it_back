module API
  class MoviesController < ApplicationController
    #protect_from_forgery with: :null_session
       
    respond_to :html, :xml, :json    

    def index
      respond_with Movie.all
    end

    def show
      respond_with Movie.find(params[:id])
    end

    def create
      # post = current_user.posts.build(post_params)  
      movie = Movie.new(movie_params)
      #user = User.find(params[:user_id])
      #movie.user = user   

      if movie.save
        render json: movie, status: 201
      else
        render json: {errors: movie.errors}, status: 422
      end
    end

    def update
      movie = Movie.find(params[:id])
      if movie.update(movie_params)
        render json: movie, status: 200
      else
        render json: {errors: movie.errors}, status: 422
      end
    end

    def destroy
      movie = Movie.find(params[:id])
      movie.destroy
      head 204
    end

    private
    
      def movie_params
        params.require(:movie).permit(:title, :link, :release_date, :actor1, :actor2, :actor3, :description, :reminders)
      end
      

  end
end