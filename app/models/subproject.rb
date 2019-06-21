class Subproject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :companies

  validates :title, presence: true
end
