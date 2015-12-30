class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :expensecategory_id
      t.string :amount
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
