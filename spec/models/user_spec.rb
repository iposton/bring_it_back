require 'rails_helper'

RSpec.describe User, type: :model do
  
  it 'responds with an email' do
		expect(FactoryGirl.build(:user)).to respond_to(:email)
	end

	it 'responds with a password' do
		expect(FactoryGirl.build(:user)).to respond_to(:password)
	end

	it 'responds with an encrypted password' do
		expect(FactoryGirl.build(:user)).to respond_to(:password_digest)
	end

	
		it 'is invalid without an email' do
		user = FactoryGirl.build(:user, email: nil)
		expect(user).to be_invalid
	end
	
	it 'is invalid with password' do
		user = FactoryGirl.build(:user, password: nil)
		expect(user).to be_invalid
	end

	it 'is invalid if email is not formatted properly' do
		user = FactoryGirl.build(:user, email: "aldjfkdj@")
		expect(user).to be_invalid
	end
	

    it{expect(subject).to be_invalid}
    it{expect(subject).to respond_to(:name)}

	
end

