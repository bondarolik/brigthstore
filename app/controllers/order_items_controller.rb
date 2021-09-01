class OrderItemsController < ApplicationController
  before_action :set_orderitems, only: [:destroy, :edit, :update, :show]
  
  def index
    @order_items = Order_Items.all
  end


  def new
    @order_item = Order_Items.new
  end

  def create
    @order_item = Order_Items.new(order_items_params)
    if @order_item.save
      redirect_to @order_item
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @order_item = Order_Items.new(order_items_params)
    if @order.update
      redirect_to @order_item
    else
      render :edit
    end
  end

  def destroy
    if @order_item.destroy
      redirect_to @order_item_path
    end
  end

  private

  def set_orderitems
    @order_items = Order_Items.find(params[:id])
  end

  def order_items_params
    params.require(:order_items).permit(:wear_id, :order_id, :price, :cantidad)
  end

end
