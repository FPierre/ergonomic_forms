class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update]

  def show
    respond_to do |format|
      format.json { render json: { order: @order }, status: :ok }
    end
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
  end

  def update
    respond_to do |format|
      if @order.update person_params
        format.json { render json: { }, status: :ok }
      else
        format.json { render json: { errors: @order.errors }, status: :bad_request }
      end
    end
  end

  def destroy
  end

  private

    def order_params
      params.require(:order).permit()
    end

    def set_order
      @order = Order.find_by public_id: params[:public_id]
    end
end
