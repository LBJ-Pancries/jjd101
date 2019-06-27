class Project < ApplicationRecord
  belongs_to :user

  has_many :subprojects, :dependent => :destroy, :inverse_of => :project
  accepts_nested_attributes_for :subprojects, :allow_destroy => true, :reject_if => :all_blank
  
  has_many :contracts, :dependent => :destroy

  validates :title, presence: true

  STATUS = ["draft", "public", "private"]
  validates_inclusion_of :status, :in => STATUS
end
