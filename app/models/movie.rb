class Movie
  include Mongoid::Document
  field :title, type: String
  field :realease_date, type: String
  field :actor1, type: String
  field :actor2, type: String
  field :actor3, type: String
  field :description, type: String
  field :reminders, type: String
  has_many :users
end
