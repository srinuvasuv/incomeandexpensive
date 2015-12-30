class CreateIncomeCategories < ActiveRecord::Migration
  def change
    create_table :income_categories do |t|
      t.string :incomesource
      t.text :desc
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
