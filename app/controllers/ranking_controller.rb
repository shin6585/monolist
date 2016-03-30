class RankingController < ApplicationController
  def have
    @items = Have.rankings
  end

  def want
    @items = Want.rankings
  end
end