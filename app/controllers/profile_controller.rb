class ProfileController < ApplicationController

  def show
    # @user = current_user
    # @profile = Profile.find(params[@user])
    @profile = current_user.profile
  end

  def new
    @profile = current_user.profile.new
  end

  def create
    # @profile = profile.new(params[user])
  end

  def edit

  end

  def update

  end
end
