class RankingsController < ApplicationController

  def have
    haves = Have.limit(10).group(:item_id).order('user_id desc')
    @items = Item.where(id: haves.pluck(:item_id))
  end

  def want
    wants = Want.limit(10).group(:item_id).order('user_id desc')
    @items = Item.where(id: wants.pluck(:item_id))
  end

end
