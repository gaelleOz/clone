class Room < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates :home_type, presence: true
  validates :accomodate, presence: true
  validates :bed_room, presence: true
  validates :bath_room, presence: true
  validates :listing_name, presence: true, length: {maximum: 75}
  validates :summary, presence: true, length: {maximum: 600}
  validates :adress, presence: true
  validates_numericality_of :price, only_integer: true

end
