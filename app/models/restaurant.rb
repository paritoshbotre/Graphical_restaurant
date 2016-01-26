class Restaurant
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,     type: String, default: ""
  field :cuisine,  type: String, default: ""
  field :location, type: String, default: ""

  validates :name, :cuisine, presence: true

  has_many :menus
  has_many :assets
end
