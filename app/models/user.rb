class User
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include ActiveModel::SecurePassword
  field :name, type: String
  field :email, type: String
  # field :password, type: String
  field :password_digest, type: String
  field :remember_digest, type: String
   has_many :movies
  #attr_accessor :password
  attr_accessor :remember_token

   before_save :downcase_email

  # Checks name's presence, length: 50
  validates :name, presence: true, length: {maximum: 50}

  # Checks email's presence, format, uniqueness, and length: 255
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness: {case_sensitive: false}, length: {maximum: 255}
 
  validates :password, length: {minimum: 6}

  # Enforces validation on the virtual password & password_confirmation attributes
  has_secure_password

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  private 

    def downcase_email
      self.email = email.downcase
    end


end
