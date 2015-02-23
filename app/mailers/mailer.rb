class Mailer < ApplicationMailer

  def new_order order
    @items = order.items
    mail(to: 'jennifer497@gmail.com', subject: 'New order placed!')
  end


end