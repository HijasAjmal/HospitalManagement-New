class Bed < ActiveRecord::Base
	belongs_to :room


	OPTIONS = {1 => "Available", 2 => "Not-Available"}


	def abc
    GENDER[OPTIONS]
  end
end
