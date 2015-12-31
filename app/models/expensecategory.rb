class Expensecategory < ActiveRecord::Base
	belongs_to :users
	belongs_to :incomes
	
end
