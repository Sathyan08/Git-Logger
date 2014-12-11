class Repo < ActiveRecord::Base

  validates :name, presence: true
  validates :full_name, presence: true
  validates :rid, presence: true, uniqueness: true
  validates :url, presence: true

  def self.find_or_create_from_github(repo_data)

  end

end
