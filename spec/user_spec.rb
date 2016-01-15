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

  it 'when calculate vo2max' do
  	age = 20
  	height = 1.75
  	weight = 70
  	gender = "male"
  	distance = 2200

  	user = Uruz::User.new(age, height, weight, gender)
  	result = user.vo2max(distance)

  	expect(result).to be false
  end

end
