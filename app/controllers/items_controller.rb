class ItemsController < ApplicationController
  before_action :set_user
  def index
    @item = Item.new
    @users = User.all
    @items  = @user.items.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = @user.items.create(item_params)
    redirect_to user_items_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:name, :characteristics, :image_id).merge(user_id: params[:id], sub_id: @user.items.size + 1)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
