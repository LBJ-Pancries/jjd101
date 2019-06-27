class Contract < ApplicationRecord

  STATUS = ["pending", "confirmed"]
  validates_inclusion_of :status, :in => STATUS
  validates_presence_of :title  #合同名称不得为空
  validates :title, presence: true
  validates_presence_of :status, :subproject_id

  belongs_to :project
  belongs_to :subproject
  belongs_to :user, :optional => true
  belongs_to :category, :optional => true
  belongs_to :company, :optional => true

  scope :by_status, ->(s){ where( :status => s ) }
  scope :by_project, ->(p){ where( :project_id => p ) }
end
