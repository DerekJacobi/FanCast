class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :location
      t.string :mixlr
      t.integer :role
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :provider
      t.string :uid
      t.string :name
      t.string :image
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps null: false
    end
  end
end
