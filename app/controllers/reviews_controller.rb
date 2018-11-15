class ReviewsController < ApplicationController
  before_action :find_jet, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.jet = @jet
    if @review.save!
      redirect_to jet_path(@jet, @review)
    else
      render :new
    end
  end

  private

  def find_jet
    @jet = Jet.find(params[:jet_id])
  end

  def review_params
    params.require(:review).permit(:content, :jet_id, :user_id)
  end
end
