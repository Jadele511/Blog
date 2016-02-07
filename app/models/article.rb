class Article < ActiveRecord::Base
	def self.search(search)
		where("title like ?", "%#{search}%") 
end
end

