class Comment < ActiveRecord::Base
  # Remember to create a migration!
      belongs_to :author, class_name: User
      belongs_to :post

  def self.most_recent
    Entry.order(created_at: :desc).limit(8)
  end
end
