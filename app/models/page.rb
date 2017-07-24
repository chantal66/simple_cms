class Page < ApplicationRecord
  validates :name, presence: true
  belongs_to :subject
  has_many :sections
  has_and_belongs_to_many :admin_users
end
