class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.column :nfl, :json
      t.column :nba, :json
      t.column :mlb, :json   
    end
  end
end
