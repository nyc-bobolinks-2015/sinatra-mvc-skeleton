require 'date'
class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  def days_since_created

  end

end
