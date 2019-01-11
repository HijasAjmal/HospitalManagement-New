class Report < ActiveRecord::Base
	belongs_to :user
    has_attached_file :file, :url => "/:attachment/:id/:style/:basename.:extension",
		:download=>false,
    :path => ":rails_root/public/:attachment/:id/:style/:basename.:extension"
    validates_attachment_content_type :file, :content_type => ["application/pdf", "image/jpeg", "image/png"]
end
