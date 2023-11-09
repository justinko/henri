class QuotesController < ApplicationController
  def show
    @quote = Quote.sample
    @rating = @quote.ratings.new
  end
end
