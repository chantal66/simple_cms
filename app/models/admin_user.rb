class AdminUser < ApplicationRecord
  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, through: :sections_edits
end
