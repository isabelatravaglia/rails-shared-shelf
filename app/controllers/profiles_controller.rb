class ProfilesController < ApplicationController

  def show
    # @user = current_user
    # @profile = Profile.find(params[@user])
    @user = current_user
    @profile = current_user.profile
    authorize @profile
  end

  def new
    @user = current_user
    @profile = Profile.new
    # @profile = current_user.profile.new
    authorize @profile
  end

  def create
    @profile = Profile.new(profile_params)
    authorize @profile
    @profile.user = current_user
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :address, :phone_number, :photo)

  end
end
