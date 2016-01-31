class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  field :avatar

  mount_uploader :avatar, AvatarUploader 
  belongs_to :restaurant
end
