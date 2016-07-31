class WantsController < ApplicationController
    before_action :logged_in_user
    
    def create
      @item = Item.find(params[:item_id])
      item.want(@item)
    end
    
    def destroy
      @item = item.wants.find(params[:id])   
      current_user.unwant(@item)
    end  
end
