class Uruz::Vo2max

	attr_accessor :user
	attr_reader :errors

	class Classifications
		VERY_WEAK = :very_weak
		WEAK      = :weak
		MIDDLE    = :middle
		GOOD      = :good
		EXCELLENT = :excellent
		HIGHER    = :higher
	end

	def initialize(user)
		raise_user_errors if !user.nil? && user.is_a?(Uruz::User)

		@user = user if self.errors.nil?
	end

	def calculate(distance)
		raise_user_errors unless distance.nil?

		vo2max_result = (distance - 504.1) / 44.8
	end

	def classification(vo2max_result)
		return nil if user.nil? && !user.is_a?(Uruz::User) && vo2max_result.nil?

		vo2max_data = load_vo2max_table_data

		vo2max_data.each do |i|
			next if i.nil? && !i[:gender].eql?(@user[:gender])

			return Classifications::VERY_WEAK if i[:very_weak].to_range.include? 	vo2max_result
			return Classifications::WEAK      if i[:weak].to_range.include? 			vo2max_result
			return Classifications::MIDDLE    if i[:middle].to_range.include? 		vo2max_result
			return Classifications::GOOD      if i[:good].to_range.include? 			vo2max_result
			return Classifications::EXCELLENT if i[:excellent].to_range.include? 	vo2max_result
			return Classifications::HIGHER    if i[:higher].to_range.include? 		vo2max_result
		end
	end

	private

		def raise_user_errors
			@errors = Uruz::Errors::InvalidAttribute
		end

		def load_vo2max_table_data
			file_path = File.expand_path "#{File.dirname(__FILE__)}/vo2max/vo2max.csv"

			SmarterCSV.process(file_path)
		end
end
