class Contract < ApplicationRecord
  belongs_to :category, :optional => true

  validates_presence_of :title  #合同名称不得为空
  validates :title, presence: true

  belongs_to :user
  belongs_to :project

  STATUS = ["draft", "public", "private"]
  validates_inclusion_of :status, :in => STATUS
end 
