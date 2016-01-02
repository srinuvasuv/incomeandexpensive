class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :category_id
      t.string :amount
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
