class Favorite
	include Mongoid::Document
	embedded_in :movie_favorite, class_name: "User", inverse_of: :favorites
