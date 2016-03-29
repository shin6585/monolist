class RankingController < ApplicationController
    def have
        @itemkeys = Have.group(:item_id).order('count_id desc').limit(10).count(:id).keys
    end
    
    def want
        @itemkeys = Want.group(:item_id).order('count_id desc').limit(10).count(:id).keys
    end
end