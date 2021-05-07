class Spell < ApplicationRecord
  has_many :spellbooks, dependent: :destroy
  has_many :users, through: :spellbooks

end
