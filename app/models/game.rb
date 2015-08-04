class Game < ActiveRecord::Base
  has_many :broadcasts
  has_many :users
end
