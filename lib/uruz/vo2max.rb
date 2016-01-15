class Uruz::Vo2max

	GENDER = [ :male, :female ]
	CLASSIFICATIONS = [ :very_weak, :weak, :middle, :good, :excellent, :higher ]

	def self.calculate(distance)
		vo2max_result = (distance - 504.1) / 44.8
	end

	def self.classification(distance, age, gender)
		vo2max_result = calculate(distance)

		vo2max_gender_data = gender.eql?(:male) ? $vo2max_male_data : $vo2max_female_data

		classificatio = result_by_gender(vo2max_gender_data, age, vo2max_result)
		classificatio.first
	end

	private

		def self.result_by_gender(vo2max_gender_data, age, vo2max_result)
			vo2max_gender_data.each do |row|
				next unless row[:age].to_range.include?(age)

				return CLASSIFICATIONS.select { |level| ranking?(level, vo2max_result, row) }
			end
		end

		def self.ranking?(level, value, vo2max_data)
			vo2max_data[level].to_range.include?(value)
		end
end
