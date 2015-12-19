class RankingController < ApplicationController

  def have
    haves = Have.limit(10).group(:item_id)
    @items = Item.where(id: haves.order('user_id desc').pluck(:item_id))
  end

  def want
    wants = Want.limit(10).group(:item_id)
    @items = Item.where(id: wants.order('user_id desc').pluck(:item_id))
  end

end
