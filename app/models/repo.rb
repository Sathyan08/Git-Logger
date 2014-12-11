class Repo < ActiveRecord::Base

  validates :name, presence: true
  validates :full_name, presence: true
  validates :rid, presence: true, uniqueness: true
  validates :url, presence: true

  has_many :repo_listings
  has_many :users, through: :repo_listings

  def self.find_or_create_from_github(repo_data)

  end

end
