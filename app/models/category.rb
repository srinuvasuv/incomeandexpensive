class Category < ActiveRecord::Base
	belongs_to :users
	validates :source,:desc, :presence => true	
	
end
