class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.json   :content
      t.string :league
      t.string :description
      # t.column :nfl, :json
      # t.column :nba, :json
      # t.column :mlb, :json
    end
  end
end
