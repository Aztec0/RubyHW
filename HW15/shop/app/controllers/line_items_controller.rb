# frozen_string_literal: true

class LineItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_line_item, only: %i[destroy update]

  def create
    if current_user
      product = Product.find(params[:product_id])
      @line_item = current_cart.line_items.find_by(product:)

      if @line_item.present?
        @line_item.update(quantity: @line_item.quantity + 1)
      else
        @line_item = current_cart.add_product(product)
      end

      respond_to do |format|
        format.html { redirect_to line_item_path(id: @line_item.id) }
        format.turbo_stream
      end
    else
      redirect_to new_user_session_path, data: { turbo: false }
    end
  end

  def update
    quantity = params[:quantity] == 'increase' ? @line_item.quantity + 1 : @line_item.quantity - 1
    @line_item.update(quantity:)

    redirect_to cart_path
  end


  def destroy
    @line_item.destroy

    redirect_to cart_path(current_cart)
  end

  private

  def find_line_item
    @line_item = current_cart.line_items.find_by(product_id: params[:product_id])
  end

  def set_line_item
    @line_item = LineItem.find(params[:id])
  end
end
