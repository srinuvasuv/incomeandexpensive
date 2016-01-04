class Adddatefeildtotransactions < ActiveRecord::Migration
  def change
  	add_column :transactions, :date, :timestamptz
  end
end
