class Addamountfieldtoincomecategory < ActiveRecord::Migration
  def change
  	add_column :income_categories, :amount, :string
  	add_column :expensecategories, :amount, :string
  end
end
