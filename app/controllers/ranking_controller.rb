class RankingController < ApplicationController
  def have
    @items = Item.all
    @ranking = Ownership.where(type: 'Have').group(:item_id).order('count_all desc').limit(10).count()
    render 'list'
  end

  def want
    @items = Item.all
    @ranking = Ownership.where(type: 'Want').group(:item_id).order('count_all desc').limit(10).count()
    render 'list'
  end
end
