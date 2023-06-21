class SobaRaitoOfRecord < ApplicationRecord
  belongs_to :record
  belongs_to :soba_raito

  validates :soba_raito_id, uniqueness: { scope: :record_id }
end
