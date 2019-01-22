class Photo < ActiveRecord::Base
    belongs_to :user
    has_attached_file :photo, :styles => { :small => "100x80>", :thumb => "100x100>" }, :url => "/:attachment/:id/:style/:basename.:png",
    :path => ":rails_root/public/:attachment/:id/:style/:basename.:png"
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\z/

    def self.findImage(user)
  			photo = find(:first, :conditions => { :user_id => user })
  			if photo.nil?
  				return "/images/contact.png"
  			else
  				return photo.photo.url(:small)
  			end
  	end
end
