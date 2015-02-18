require "rails_helper"

    describe "Movies API", :type => :request do

    	 #  it "returns a list of movies" do
      #   FactoryGirl.create_list(:movie, 10)

      #   get "/api/movies"

      #   expect(response).to have_http_status 200

      #  movies = JSON.parse(response.body)
      #   expect(movies.count).to eq(10)
      # end

      
      it "returns a specific movie" do
        movie = FactoryGirl.create(:movie)

        get "/api/movies/#{movie.id}"

        expect(response).to have_http_status 200
        expect(response.body).to eq(movie.to_json)
      end

      

  end