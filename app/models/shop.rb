class Shop < ApplicationRecord
  has_many :records, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :closed, presence: true

  enum closed: { open: 0, comfirm: 1, closed: 2 }
end
