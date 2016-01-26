class SubMenu
  include Mongoid::Document

  field :name,  type: String, default: ""
  field :price, type: Float, default: 0.0

  belongs_to :menu
end
