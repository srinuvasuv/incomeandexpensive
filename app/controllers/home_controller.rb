class HomeController < ApplicationController
  def index
  end

  def incomecategory 

  	@category = IncomeCategory.new()
  end

  def incomecategorycreate
  		
  	@income = IncomeCategory.new(incomecategory_params)
  	if @income.save
  		redirect_to home_incomecategory_path, :flash => {:notice => "IncomeCategory added sucessfully"}	
    else
      redirect_to home_incomecategory_path,  :flash => {:error => @income.errors.full_messages
 }
  	end
  end

  def addincome
    @addincome = Income.new()
  end

  def addincomecreate
    
      @income = Income.new(income_params)
      if @income.save

        redirect_to home_income_path, :flash => {:notice => "Income added sucessfully"}
      else
        
      redirect_to home_addincome_path,  :flash => {:error =>  @income.errors.full_messages
 }

      end
  end

  def transaction
    
  end

  def income
    
  end

  def expensecategory

    @expendcategory = Expensecategory.new()

    
  end

  def expensecategorycreate  

    @expendcategory = Expensecategory.new(expendcategory_params)
    if @expendcategory.save
      redirect_to home_expensecategory_path, :flash => {:notice => "ExpendituersCategory added sucessfully"}   
    else
      redirect_to home_expensecategory_path ,  :flash => {:error => @expendcategory.errors.full_messages
 }
    end
  end

  def addexpenditures

    @expendituers = Expense.new()

  end

  def expendituerscreate
    
    @expendituers = Expense.new(expendituers_params)
    if @expendituers.save
      redirect_to home_expendituers_path, :flash => {:notice => "Expendituers added sucessfully"}  
    else
      redirect_to home_addexpenditures_path,:flash => {:error =>  @expendituers.errors.full_messages}
    end
  end

  private
   def incomecategory_params
   			
   		params.require('income_category').permit(:source,:desc,:user_id)

   end

   def income_params

      params.require('income').permit(:category_id,:amount,:user_id,:date)

   end

   def expendcategory_params
      params.require('expensecategory').permit(:source,:desc,:user_id)
   end

   def expendituers_params
      params.require('expense').permit(:category_id,:amount,:user_id,:date)
   end


end
