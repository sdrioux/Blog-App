class Post < ActiveRecord::Base
	attr_accessible :title, :body, :author

	validates_presence_of :title, :body, :author
end
