class CreateBroadcasts < ActiveRecord::Migration
  def change
    create_table :broadcasts do |t|
      t.string :user
      t.string :game
      t.timestamps null: false
    end
  end
end
