class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    if !@user.synced
      get_repo_data(@user)
    end
  end

  private

   def get_repo_data(user)
    repos_owned = client.user(user.username).rels[:repos].get.data
    repos_subscribed = client.user(user.username).rels[:subscriptions].get.data
    repos_starred = client.user(user.username).rels[:starred].get.data

    binding.pry

    repos_owned + repos_subscribed + repos_starred
  end
end
