class CreateSchedules < ActiveRecord::Migration
<<<<<<< HEAD

=======
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
>>>>>>> a99afa5fc96747fcc1b554645193e8aae1b25a37
end
