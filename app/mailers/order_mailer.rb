class OrderMailer < ApplicationMailer
  def send_receipt(order_id)
    @order = Order.find(order_id)
    @user = @order.user
    mail(to: @user.email, subject: 'Thanks you')
  end
end
