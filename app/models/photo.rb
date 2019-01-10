class Photo < ActiveRecord::Base
    belongs_to :user
    has_attached_file :photo, :styles => { :small => "100x80>", :thumb => "100x100>" }, :url => "/:attachment/:id/:style/:basename.:png",
    :path => ":rails_root/public/:attachment/:id/:style/:basename.:png"
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\z/



    # has_attached_file :photo, :styles => { :small => "150x150>", :thumb => "100x100>" }, :url => "/system/:style/missing.png"
    # validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\z/
end
