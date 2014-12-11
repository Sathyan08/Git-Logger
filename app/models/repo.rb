class Repo < ActiveRecord::Base

  validates :name, presence: true
  validates :full_name, presence: true
  validates :rid, presence: true, uniqueness: true
  validates :url, presence: true

  has_many :repo_listings
  has_many :users, through: :repo_listings

  def self.create_repo_from_github(repo_data)
    repo = Repo.find_or_initialize_by(uid: repo_data["id"])
    repo.name = repo_data["name"]
    repo.full_name = repo_data["full_name"]
    repo.url = repo_data["html_url"]
    repo.save
  end
end
