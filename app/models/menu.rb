class Menu
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title

  has_many :sub_menus
  belongs_to :restaurant
end
