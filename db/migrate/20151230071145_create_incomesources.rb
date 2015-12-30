class CreateIncomesources < ActiveRecord::Migration
  def change
    create_table :incomesources do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
