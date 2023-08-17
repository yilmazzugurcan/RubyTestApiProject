class Device < ApplicationRecord
  belongs_to :address
  has_many :keys, dependent: :destroy
end
