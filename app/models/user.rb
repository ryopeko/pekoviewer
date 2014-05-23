class User < ActiveRecord::Base
  has_many :actor_users
  has_many :activities
end
