class Income < Transaction
	validates :category_id,:amount,:date, :presence => true	
end
