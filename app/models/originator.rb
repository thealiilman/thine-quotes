class Originator < ApplicationRecord
  has_many :quotes, dependent: :destroy

  validates :name, presence: true
end
