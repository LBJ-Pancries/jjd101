class Contract < ApplicationRecord
  validates :title, presence: true
end
