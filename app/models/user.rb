class User < ApplicationRecord
  has_many :spellbooks
  has_many :spells, through: :spellbooks
  
  has_secure_password

end
