class String

	def to_range
		if self.include?('..') && self.count('.') < 5
			elements = self.split('..')
			return Range.new(elements[0].to_i, elements[1].to_i)
		else
			raise ArgumentError.new("Couldn't convert to Range")
		end
	end

end