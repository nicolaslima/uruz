class Uruz::User

	attr_accessor :user
	attr_reader 	:errors

	class Attributes
		USER = [:age, :height, :weight, :gender]
	end

	def initialize(user)
		@user = user
		raise_user_errors unless valid?
	end

	def valid?
		user_attributes_valid?
	end

	private

		def user_attributes_valid?
			!@user.nil? && @user.is_a?(Hash) && @user.keys.eql?(Attributes::USER)
		end

		def raise_user_errors
			@errors = Uruz::Errors::InvalidAttribute
		end
end