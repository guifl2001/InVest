class ReviewsController < ApplicationController
  def create
    @faculdade = Faculdade.find(params[:faculdade_id])
    @review = Review.new(review_params)
    @review.faculdade = @faculdade
    @review.user = current_user
    if @review.save
      respond_to do |format|
        format.html { redirect_to faculdade_path(@faculdade) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'faculdades/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
