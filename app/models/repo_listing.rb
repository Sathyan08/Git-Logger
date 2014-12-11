class RepoListing < ActiveRecord::Base

  belongs_to :user
  belongs_to :repo

  def self.find_or_create_from_github(repo, user)
    listing = RepoListing.new
    listing.user = user
    listing.repo = Repo.find_by(rid: repo["id"])

    listing.save
  end
end
