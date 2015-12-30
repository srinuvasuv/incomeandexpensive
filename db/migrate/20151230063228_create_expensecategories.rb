class CreateExpensecategories < ActiveRecord::Migration
  def change
    create_table :expensecategories do |t|
      t.string :expensesource
      t.text :desc
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
