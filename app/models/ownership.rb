class Ownership < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :item, class_name: "Item"

  def self.rankings(limit = 10)
    ids = self.group(:item_id).order('count_item_id desc').limit(limit).count(:item_id).keys
    Item.find(ids).sort_by{|o| ids.index(o.id)}
  end
end