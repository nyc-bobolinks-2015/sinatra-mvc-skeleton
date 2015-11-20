class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

    def days_since_created

    end

end
