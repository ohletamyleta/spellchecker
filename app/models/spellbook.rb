class Spellbook < ApplicationRecord
  belongs_to :user
  belongs_to :spell
end
