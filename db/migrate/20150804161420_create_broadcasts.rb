class CreateBroadcasts < ActiveRecord::Migration
  def change
    create_table :broadcasts do |t|
      t.references :user, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
