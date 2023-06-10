class Shop < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :closed, presence: true

  enum closed: { open: 0, confirm: 1, closed: 2 }
end
