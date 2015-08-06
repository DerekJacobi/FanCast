class Game < ActiveRecord::Base
  has_many :broadcasts
  has_many :broadcasters, through: :broadcasts, source: :user
end
