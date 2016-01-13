require 'spec_helper'

describe Uruz::User do
  it 'has a valid user' do
  	user = Uruz::User.new({age: 1, height: 1.75, weight: 70, gender: "male"})

    expect(user.valid?).to be true
  end

  it 'when a not user valid' do
		user = Uruz::User.new({})

		expect(user.valid?).not_to be true
  end
end
