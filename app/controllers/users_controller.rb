class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
    @jets = @user.jets
  end
end
