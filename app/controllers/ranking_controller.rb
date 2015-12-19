class RankingController < ApplicationController
  def have
    have_item_ids = Have.group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
    @items = []
    have_item_ids.each do |have_item_id|
      @items << Item.find(have_item_id)
    end
  end

  def want
    want_item_ids = Want.group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
    @items = []
    want_item_ids.each do |want_item_id|
      @items << Item.find(want_item_id)
    end
  end
end
