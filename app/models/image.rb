class Image < ApplicationRecord
  belongs_to :item
  belomgs_to :user

  mount_uploader :image, ImageUploader
end
