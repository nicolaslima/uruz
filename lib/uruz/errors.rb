module Uruz::Errors

  # @abstact Exceptions raised by Uruz inherit from Error
  class Error < StandardError; end

	# Exception rised when uninformed someone required attribute
  class AttributesUninformed < Error; end

  # Exception raised when some attribute invalid
  class InvalidAttribute < Error; end

end