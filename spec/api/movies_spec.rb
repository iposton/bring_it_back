require "rails_helper"

    describe "Movies API", :type => :request do

      
      it "returns a specific movie" do
        movie = FactoryGirl.create(:movie)

        get "/api/movies/#{movie.id}"

        expect(response).to have_http_status 200
        expect(response.body).to eq(movie.to_json)
      end

      

  end