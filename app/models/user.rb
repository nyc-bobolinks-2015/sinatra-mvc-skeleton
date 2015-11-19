class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :user, :email, { presence: true }
      has_many :posts
      has_many :comments

  def self.most_recent
    Entry.order(created_at: :asc).limit(3)
  end
end
