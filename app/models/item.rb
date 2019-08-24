class Item < ApplicationRecord
  belongs_to :user
  has_many :images

  validates_uniqueness_of :sub_id, :scope => :user_id
  
end
