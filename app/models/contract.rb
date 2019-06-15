class Contract < ApplicationRecord
  STATUS = ["draft", "public", "private"]
  validates_inclusion_of :status, :in => STATUS

  validates :title, presence: true

  before_validation :generate_friendly_id, :on => :create

  def to_param
    self.friendly_id
  end

  belongs_to :user

  protected

  def generate_friendly_id
    self.friendly_id ||= SecureRandom.uuid
  end
end
