class Activity < ActiveRecord::Base
  belongs_to :user

  validates :user_id, uniqueness: {scope: :permalink}

  enum source_service_name: {
    "Hatena::Bookmark".to_sym => "Hatena::Bookmark",
    github: "github"
  }

  def self.has_source_service_name?(source_service_name)
    self.source_service_names.keys.include? source_service_name
  end
end
