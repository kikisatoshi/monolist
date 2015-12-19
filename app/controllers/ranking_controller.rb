class RankingController < ApplicationController

  def have
    haves = Have.group(:item_id).order(user_id: :desc).limit(10)
    @items = Item.find(haves.pluck(:item_id))
    # @items = Item.where(id: haves.pluck(:item_id))
  end

  def want
    wants = Want.group(:item_id).order(user_id: :desc).limit(10)
    @items = Item.find(wants.pluck(:item_id))
    # @items = Item.where(id: wants.pluck(:item_id))
  end

end
