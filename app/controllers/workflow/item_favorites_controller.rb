class Workflow::ItemFavoritesController < ApplicationController
  def new
  end
  
  def create
    # @item_favorite.create(
    #   renter_id: current_renter.id,
    #   inventory_item_id: @item.id
    #   )
      
    render :layout => false
  end
end
