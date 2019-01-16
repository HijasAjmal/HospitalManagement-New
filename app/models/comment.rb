class Comment < ActiveRecord::Base
	belongs_to :appointment

	OPTIONS = {"No" => 0, "Yes" => 1}


  def self.findOption(msg)
    return OPTIONS.index(msg)
  end
end
