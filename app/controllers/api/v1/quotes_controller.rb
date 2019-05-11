class Api::V1::QuotesController < Api::V1::ApplicationController
  def index
    quotes = Quote.includes(:originator).order('originators.name')
    render json: ::QuoteSerializer.new(quotes)
  end
end
