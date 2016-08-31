class OrderMailer < ApplicationMailer
  def send_receipt(order_id)
    @order = Order.find(order_id)
    @order_items = @order.order_items
    @user = @order.user
    mail(to: @user.email, subject: 'Thanks you')
  end
end
