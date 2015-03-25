class Listing < ActiveRecord::Base
	has_attached_file :image
	validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ },
	:styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "missing.jpg", 
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end
