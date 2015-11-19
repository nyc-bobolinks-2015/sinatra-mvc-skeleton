class Post < ActiveRecord::Base
  # Remember to create a migration!
  validates :title, :body,{ presence: true }
      belongs_to :user
      has_many :comments

  def self.most_recent
    Entry.order(created_at: :desc).limit(10)
  end
end
