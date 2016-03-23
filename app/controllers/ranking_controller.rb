class RankingController < ApplicationController
    def have
        itemkeys = Have.group(:item_id).order('count_id desc').limit(10).count(:id).keys
        @rankings = Item.find(itemkeys) 
        @i = 1
    end
    
    def want
        itemkeys = Want.group(:item_id).order('count_id desc').limit(10).count(:id).keys
        @rankings = Item.find(itemkeys)
        @i = 1
    end
end