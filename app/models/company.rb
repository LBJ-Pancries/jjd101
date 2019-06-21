class Company < ApplicationRecord
  validates :title, presence: true
  belongs_to :project, :optional =>true
  belongs_to :subproject, :optional => true
end
