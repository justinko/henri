class RatingsController < ApplicationController
  def create
    @quote = Quote.find(params[:quote_id])
    @rating = @quote.ratings.new(rating_params)
    @rating.ip = request.remote_ip

    if @rating.save
      redirect_to root_url
    else
      render "quotes/show"
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:number)
  end
end
