require 'swagger_helper'

describe Api::V1::QuotesController, type: :request do
  path '/quotes' do
    get 'Get all quotes' do
      tags 'Quotes'
      consumes 'application/json'

      response '200', 'ok' do
        let!(:originator) { create :originator }
        let!(:quotes) { create_list(:quote, 5, originator: originator) }

        run_test! do
          data = JSON.parse(response.body)['data']
          expect(data.length).to eq(5)
        end
      end
    end
  end
end
