class ExpsampleController < ApplicationController
  def initialize
    @api = ExpenseController.new
  end

  def index
    @result = @api.create_expense
  end
end
