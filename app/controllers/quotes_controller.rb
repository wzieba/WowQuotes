class QuotesController < ApplicationController

  def index
    @quotes = Quote.order("created_at DESC")
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to action: "index"
    else
      render :action => :new
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:text)
  end
end
