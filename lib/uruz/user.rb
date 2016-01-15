class Uruz::User

	attr_accessor :age, :height, :weight, :gender

	def initialize(age, height, weight, gender)
		self.age = age
		self.height = height
		self.weight = weight
		self.gender = gender
	end

	def imc
		# Uruz::IMC.new(distance, age, gender)
	end

	def vo2max(distance)
		vo2max = Vo2max.new(distance, self.age, self.gender)
		vo2max.classification(distance)
	end

end