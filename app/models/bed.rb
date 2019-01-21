class Bed < ActiveRecord::Base

	belongs_to :room

	OPTIONS = { "No" => 0, "Yes" => 1 }

	def get_option(msg)
		return OPTIONS.index(msg)
	end
end
