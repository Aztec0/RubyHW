# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def current_cart
    Cart.includes(:line_items).find(cookies[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    cookies[:cart_id] = cart.id
    cart
  end

  helper_method :current_cart
end
