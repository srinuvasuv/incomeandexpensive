class Income < ActiveRecord::Base
	belongs_to :users
	belongs_to :income_categories
end
