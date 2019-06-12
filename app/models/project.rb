class Project < ApplicationRecord
  belongs_to :user
  has_many :subprojects
  validates :title, presence: true
end
