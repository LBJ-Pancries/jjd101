class Subproject < ApplicationRecord
  validates :title, presence: true
  belongs_to :project

  belongs_to :user

  has_many :contracts

end
