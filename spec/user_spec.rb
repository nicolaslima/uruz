require 'spec_helper'

describe Uruz::User do
  it 'has a valid user' do
  	age = 20
  	height = 1.75
  	weight = 70
  	gender = "male"

  	user = Uruz::User.new(age, height, weight, gender)

    expect(user.nil?).to be false
  end
end
