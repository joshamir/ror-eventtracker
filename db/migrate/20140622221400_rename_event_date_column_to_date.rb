class RenameEventDateColumnToDate < ActiveRecord::Migration
  def self.up
  	rename_column :events, :EventDate, :date
  end

  def self.down
  	rename_column :events, :date, :EventDate
  	
  end
end
