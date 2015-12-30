# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["salary","business","others"].each do |name|
	if Incomesource.find_by_name(name).nil?
	    Incomesource.create(:name => name)
	end
end

["food and drink","health","transportation","leisure","others"].each do |f|
	
	if Expensesource.find_by_name(f).nil?
		Expensesource.create(:name => f)
	end
end

puts "Seed Executed Successfully !"
