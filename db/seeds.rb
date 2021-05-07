require 'rest-client'

resp = RestClient::Request.execute(method: :get,
  url:'https://api.open5e.com/spells/?limit=400',
  headers:{
    'Content-Type': 'application/json'
  })

  spell_data = JSON.parse(resp.body)

  spells = spell_data["results"]

  #byebug

  
 spells.each do |spell, attribute|
    Spell.create(
      name: spell["name"],
      desc: spell["desc"],
      higher_level: spell["higher_level"],
      range: spell["range"],
      components: spell["components"],
      material: spell["material"],
      ritual: spell["ritual"],
      duration: spell["duration"],
      concentration: ["concentration"],
      casting_time: spell["casting_time"],
      level: spell["level"],
      level_int: spell["level_int"],
      school: spell["school"],
      dnd_class: spell["dnd_class"],
      archetype: spell["archetype"],
      circles: spell["circles"]      
      )
  end

User.create(name: "leta", email: "me@me.com", password_digest: "password")
User.create(name: "sven", email: "why@whynot.com", password_digest: "password")

Spellbook.create(user_id: 2)
Spellbook.create(user_id: 1)