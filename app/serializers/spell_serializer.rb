class SpellSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :desc, :higher_level, :range, :components, :material, :ritual, :duration, :concentration, :casting_time, :level, :level_int, :school, :dnd_class, :archetype, :circles

  has_many :users
end
