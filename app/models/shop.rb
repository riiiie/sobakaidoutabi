class Shop < ApplicationRecord
  has_many :records, dependent: :destroy
  has_many :soba_raito_of_shops, dependent: :destroy
  has_many :soba_raitos, through: :soba_raito_of_shops

  validates :name, presence: true
  validates :address, presence: true
  validates :closed, presence: true

  enum closed: { open: 0, confirm: 1, closed: 2 }
end
