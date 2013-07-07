class Post < ActiveRecord::Base
	attr_accessible :title, :body, :author, :picture
	validates_presence_of :title, :body, :author
  mount_uploader :picture, PictureUploader
end
