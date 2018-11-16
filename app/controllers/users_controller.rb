class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
    @jets = Jet.where(user_id: current_user.id)
  end
end
