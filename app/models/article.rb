class Article < ActiveRecord::Base
	belongs_to :category
	
	validates_presence_of :tite, :content

	#scopes
	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')
end
