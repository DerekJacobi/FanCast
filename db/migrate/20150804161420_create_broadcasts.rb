class CreateBroadcasts < ActiveRecord::Migration
  def change
    create_table :broadcasts do |t|
      t.string :user
      t.string :game
      t.string :away
      t.string :home
      t.timestamps null: false
    end
  end
end
