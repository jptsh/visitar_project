class CardsController < ApplicationController
  
  def new
    @box = Box.find(params[:box_id])
    @order = Order.new
    #authorize @order
  end


  def create
    @box = Box.find(params[:box_id])
    @order = Order.new(order_params)
    @order.user = current_user
    @order.box = @box
     @order.save!
    #authorize @order

    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def order_params
    params.permit(:user_id, :box_id)
  end
end
