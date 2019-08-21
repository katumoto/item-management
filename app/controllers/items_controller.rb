class ItemsController < ApplicationController
  def index
    @items  = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:name, :characteristics, :image_id)
  end
end
