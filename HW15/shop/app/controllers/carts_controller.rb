# frozen_string_literal: true

class CartsController < ApplicationController
  def show
    @line_items = current_cart.line_items
  end
end
