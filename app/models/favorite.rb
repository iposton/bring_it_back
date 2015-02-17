class Favorite
	include Mongoid::Document
	field :title, type: String
	belongs_to :user
	belongs_to :movie

end
