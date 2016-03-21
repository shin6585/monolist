class RankingController < ApplicationController
    def have
        @items = Have.group(:item_id).order('count_id desc').count('id')
    end
    
    def want
        @items = Want.group(:item_id).order('count_id desc').count('id')
    end
    
end
