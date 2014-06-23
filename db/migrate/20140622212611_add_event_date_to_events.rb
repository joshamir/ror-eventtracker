class AddEventDateToEvents < ActiveRecord::Migration
  def change
    add_column :events, :EventDate, :default => 0 :date
  end
end
