class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :follower_id
      t.references :user, index: true, foreign_key: true
      t.boolean :active

      t.timestamps null: false
    end
  end
end
