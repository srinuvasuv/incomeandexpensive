class HomeController < ApplicationController
  def index
  end

  def incomecategory 

  	@category = IncomeCategory.new()
  end

  def incomecategorycreate
  		
  	@income = IncomeCategory.new(incomecategory_params)
  	if @income.save
  		redirect_to home_incomecategory_path	
  	end
  end

  def addincome
    @addincome = Income.new()
  end

  def addincomecreate
    binding.pry
  end

  private
   def incomecategory_params
   			
   		params.require('income_category').permit(:incomesource,:desc,:user_id)

   end

   def income_params

      params.require('income').permit(:incomecategory_id,:amount,:user_id)

   end


end
