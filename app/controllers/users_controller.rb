class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    if !@user.synced
      @user.get_repo_data
    end
  end

end
