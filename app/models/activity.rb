class Activity < ActiveRecord::Base
  belongs_to :user

  validates :user_id, uniqueness: {scope: :permalink}
end
