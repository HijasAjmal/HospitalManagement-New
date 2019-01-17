class Report < ActiveRecord::Base
	belongs_to :user
    has_attached_file :file, :url => "/:attachment/:id/:style/:basename.:extension",
		:download=>false,
    :path => ":rails_root/public/:attachment/:id/:style/:basename.:extension"
    validates_attachment_content_type :file, :content_type => ["application/pdf", "image/jpeg", "image/png"]

		def find_file(url)
			@url = url.to_s
			@new_url = @url.split('?')
			return @new_url[0]
		end
		
end
