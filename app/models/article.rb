class Article < ActiveRecord::Base
	def self.search(search)
		where("title like ?", "%#{search}%") 
	end
	def increment
	  self.views ||= 0
	  self.views += 1
	  self.save
	end

	has_many :comments


end

