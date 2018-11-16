class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
    @jets = @user.jets




    # @jets = current_user
    #   if @current_user = @create_jet
    #     return @user.jets
    #   else
    #     return @jets = @user.jets
    end
  end

