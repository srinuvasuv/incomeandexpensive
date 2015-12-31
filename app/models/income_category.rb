class IncomeCategory < ActiveRecord::Base
	belongs_to :users
	belongs_to :incomes
	
end
