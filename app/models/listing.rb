class Listing < ActiveRecord::Base
	has_attached_file :image, 
	:styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "missing.jpg", :content_type => /\Aimage\/.*\Z/,
    :storage => :dropbox, 
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end
