class Project < ApplicationRecord
  belongs_to :user
  has_many :subprojects
  validates :title, presence: true

  STATUS = ["draft", "public", "private"]
  validates_inclusion_of :status, :in => STATUS
end
