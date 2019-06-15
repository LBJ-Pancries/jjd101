class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    is_admin
  end

  # validates :role, presence: true

  has_many :resumes
  has_many :orders
  has_many :contracts
  has_many :posts

  has_many :subprojects

  has_many :memberships
  has_many :groups, :through => :memberships

  has_many :projects

  has_one :profile
  accepts_nested_attributes_for :profile
end
