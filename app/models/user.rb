class User < ActiveRecord::Base
  has_secure_password

  has_many :follows
  has_many :followers, through: :follows
  # after this line of code we can now @user.followers
  # but it really executes @user.follows (the through tells us that)
  # then, on that collection, it will .####### where ###### ==> source

  has_many :broadcasts
  has_many :games_broadcasted, through: :broadcasts, source: :game
  has_many :follow_teams


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.password_digest = 'abc'
      user.save!
    end
  end

  enum role: [:listener, :broadcaster, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :listener
  end

  has_attached_file :image, styles: {
    small: "64x64",
    med: "200x200",
    large: "400x400"
  }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
