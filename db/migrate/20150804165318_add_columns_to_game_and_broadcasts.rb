class AddColumnsToGameAndBroadcasts < ActiveRecord::Migration
  def change
    add_column :games, :broadcast_id, :integer
    add_reference :games, :user, index: true, foreign_key: true
    add_reference :broadcasts, :game, index: true, foreign_key: true
    add_reference :broadcasts, :user, index: true, foreign_key: true
  end
end
