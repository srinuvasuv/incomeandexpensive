class Transaction < ActiveRecord::Base
	belongs_to :users
    belongs_to :category
end
