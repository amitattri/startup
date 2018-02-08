require 'csv'    
class Member < ActiveRecord::Base
	belongs_to :group

	def self.import(file)
		
		csv = CSV.parse(File.read(file.path)) 

		csv.each do |row|
	      byebug		
		  Member.create!(name: row[0].split('@')[0], email: row[0], phone: row[1], group_id: 1)
		end

    end		
end

