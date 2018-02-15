require 'csv'    
class Member < ActiveRecord::Base
	belongs_to :group

	def self.import(file)
		
	  spreadsheet = Roo::Spreadsheet.open(file.path)
    (2..spreadsheet.last_row).each do |row_no|
    	Member.create(name: spreadsheet.row(row_no)[0].split('@')[0], email: spreadsheet.row(row_no)[0], group_id: 1)
    end 	
    	
  end		
end

