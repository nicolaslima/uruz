require 'spec_helper'

describe Uruz::Vo2max do

	before(:each) do
    @user = Uruz::User.new({age: 20, height: 1.75, weight: 70, gender: "male"})
  end

  it 'when a user is classified as middle' do
  	vo2max = Uruz::Vo2max.new(@user)

  	distance = 2500
  	result   = vo2max.calculate(distance)

  	classification = vo2max.classification(result)

    expect(classification).to be Uruz::Vo2max::Classifications::MIDDLE
  end

end
