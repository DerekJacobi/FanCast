class CreateFollowTeams < ActiveRecord::Migration
  def change
    create_table :follow_teams do |t|
      t.references :user, index: true, foreign_key: true
      t.string :team
      t.boolean :active

      t.timestamps null: false
    end
  end
end
