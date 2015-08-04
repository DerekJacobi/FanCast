class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.string :follower_id
      t.string :integer
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
