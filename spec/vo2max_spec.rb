require 'spec_helper'

describe Uruz::Vo2max do

  it 'when a user is classified as middle' do
    distance = 2500
    gender   = :male
    age      = 20

    classification = Uruz::Vo2max.classification(distance, age, gender)

    expect(classification).to be Uruz::Vo2max::CLASSIFICATIONS[3]
  end

end
