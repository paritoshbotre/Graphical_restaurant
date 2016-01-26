class Offer
  include Mongoid::Document

  field :name, type: String, default: ""

  belongs_to :restaurant
end
