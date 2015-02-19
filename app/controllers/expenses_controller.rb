class ExpensesController < ApplicationController

# response = HTTParty.get('https://api.stackexchange.com/2.2/questions?site=stackoverflow')

#  include HTTParty 
  base_uri = 'guarded-caverns-1459.herokuapp.com'

  def initialize
    @name = "Jenny"
    @token = "5705a4885fdc06a200e71a90a02a78bd"
  end
  
  def index
     request = Typhoeus::Request.new(
      "https://guarded-caverns-1459.herokuapp.com/api/v1/expenses",
      method: :get,
      headers: { name: @name, token: @token }
  )
      run_request(request)
  end

  def run_request request
    request.run
    response = request.response
    @data = response.response_body
  end

  def new
    @expense = 1
  end

  def create
    request = Typhoeus::Request.new('https://guarded-caverns-1459.herokuapp.com/api/v1/expenses',
      method: :post,
      headers: { name: @name, token: @token },
      params: { date: params[:date], amount: params[:amount], category: 'ladyboys4eva'}
      )
    run_request(request)
  end

end
