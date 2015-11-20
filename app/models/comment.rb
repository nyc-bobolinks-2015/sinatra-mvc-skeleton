class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  def days_since_created

  end

end
