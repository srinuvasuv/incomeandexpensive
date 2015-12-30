class CreateExpensesources < ActiveRecord::Migration
  def change
    create_table :expensesources do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
