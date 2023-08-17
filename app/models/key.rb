class Key < ApplicationRecord
  belongs_to :device

  validates :key, presence: true, length: { minimum: 4, maximum: 8 }
end
