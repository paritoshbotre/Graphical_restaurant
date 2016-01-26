class Restaurant
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,     type: String, default: ""
  field :cuisine,  type: String, default: ""
  field :location, type: String, default: ""

  has_many :menus
end
