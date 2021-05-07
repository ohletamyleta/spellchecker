class SpellbookSerializer
  include JSONAPI::Serializer
  attributes :id, :user_id, :spell_id

  belongs_to :user 
  belongs_to :spell 
  
end
