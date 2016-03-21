class RankingController < ApplicationController
    def have
        @items = Have.group(:item_id).order('count_item_id desc').item
    end
    
    def want
        @items = Want.group(:item_id).order('count_item_id desc').item
    end
    
end
