class Bed < ActiveRecord::Base
	belongs_to :room


	OPTIONS = {"No" => 0, "Yes" => 1}


  def self.findOption(msg)
		p self
    return OPTIONS.index(msg)
  end

	def get_option
		p self
		OPTIONS[is_engaged]
	end
end
