require 'rails_helper'

RSpec.describe Movie, type: :model do
  
  	it 'is invalid without a title' do
	movie = FactoryGirl.build(:movie, title: nil)
	expect(movie).to be_invalid
 end
    it 'is invalid if link is not formatted properly' do
	movie = FactoryGirl.build(:movie, link: "456xxyt22.bom")
	expect(movie).to be_invalid
 end

 it 'is invalid when title is over 55 characters' do

    movie = FactoryGirl.build(:movie)
    movie.title = "a" * 56
    expect(movie).to be_invalid

  end

  it{expect(subject).to respond_to(:description)}
  it{expect(subject).to respond_to(:release_date)}
  it{expect(subject).to respond_to(:link)}
  it{expect(subject).to respond_to(:actor1)}
  it{expect(subject).to respond_to(:actor2)}
  it{expect(subject).to respond_to(:actor3)}
  it{expect(subject).to be_invalid}
end
