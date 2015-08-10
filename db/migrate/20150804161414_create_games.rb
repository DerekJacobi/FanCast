class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :date
      t.string :time
      t.string :location
      t.string :league
      t.string :home_team
      t.string :away_team
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
