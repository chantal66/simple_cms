class Section < ApplicationRecord

  validates  :name, presence: true
  belongs_to :page
end