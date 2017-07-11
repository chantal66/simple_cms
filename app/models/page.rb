class Page < ApplicationRecord
  validates :name, presence: true
  belongs_to :subject
  has_many :sections
end
