class Movie
  include Mongoid::Document
  #Mongoid::Attributes::Dynamic
  field :title, type: String
  field :link, type: String
  field :release_date, type: String
  field :actor1, type: String
  field :actor2, type: String
  field :actor3, type: String
  field :description, type: String
  field :reminders, type: String
  #field :user_id, type: Integer
  #has_many :users
  belongs_to :user
  #has_one :user, root: :movie_poster
  validates :link, presence: true, format: {with: /https?:\/\/[\S]+/}
  validates :title, presence: true, length: {maximum: 50}
  
  validates :actor1, presence: true, on: :create, length: { maximum: 55 }
  validates :actor2, presence: true, on: :create, length: { maximum: 55 }
  validates :actor3, presence: true, on: :create, length: { maximum: 55 }
  validates :description, presence: true
  validates :reminders, presence: true, on: :create, length: { maximum: 55 }
end
