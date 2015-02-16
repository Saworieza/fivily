module ItemsHelper
  include ActionView::Helpers::NumberHelper

  def price_conversion price
    number_to_currency(price, locale: :idr)
  end 

end
