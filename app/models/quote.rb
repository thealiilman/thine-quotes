class Quote < ApplicationRecord
  belongs_to :originator

  validates :content, presence: true
end
