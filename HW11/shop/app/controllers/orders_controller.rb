class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: %i[show order_pay]

  def index
    @orders = current_user.orders
  end

  def create
    order = current_user.orders.create(cart: current_cart)
    order.update(user: current_user, cart: current_cart)

    redirect_to order_path(order), notice: 'Order was successfully created'
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def order_pay
    @order.update(status: :paid)
    cookies.delete(:cart_id)

    redirect_to order_path(@order), notice: 'Order was payed'
  end

  private

  def set_order
    @order = Order.find_by(id: params[:id])
  end
end
