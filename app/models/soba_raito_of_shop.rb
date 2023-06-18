class SobaRaitoOfShop < ApplicationRecord
  belongs_to :shop
  belongs_to :soba_raito

  validates :soba_raito_id, uniqueness: { scope: :shop_id }
end
