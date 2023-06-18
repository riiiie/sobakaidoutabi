class Record < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many :soba_raito_of_records, dependent: :destroy
  has_many :soba_raitos, through: :soba_raito_of_records

  validates :visit_date, presence: true
  validates :soba_texture, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :soba_smell, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :soba_aldente, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :soup_saltiness, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :soup_taste, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :memo, length: { maximum: 500 }

  validate :check_past_date

  enum kind_of_menu: { cool: false, hot: true }

  def check_past_date
    if visit_date.present? && visit_date >= Date.current
      errors.add(:visit_date, "は過去の日付を選択してください")
    end
  end
end
