class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.integer :incomecategory_id
      t.string :amount
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
