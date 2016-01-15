class Uruz::User

	attr_accessor :age, :height, :weight, :gender

	def initialize(age, height, weight, gender)
		self.age = age
		self.height = height
		self.weight = weight
		self.gender = gender
	end

	def imc
		IMC.calculate(self.height, self.weight)
	end

	def vo2max(distance)
		classification = Vo2max.classification(self.distance, self.age, self.gender)
	end

end