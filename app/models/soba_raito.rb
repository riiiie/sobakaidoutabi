class SobaRaito < ApplicationRecord
  has_many :shops, through: :soba_raito_of_shops
  has_many :soba_raito_of_shops, dependent: :destroy
  has_many :records, through: :soba_raito_of_records
  has_many :soba_raito_of_records, dependent: :destroy
end
