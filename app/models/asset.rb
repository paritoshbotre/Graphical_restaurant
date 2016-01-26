class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :restaurant
end
