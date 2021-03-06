json.extract! @poke, :id, :name, :attack, :defense, :image_url,       :moves, :poke_type, :items

json.image_url asset_path(@poke.image_url)

json.items @poke.items do |item|
  json.id item.id
  json.name item.name
  json.pokemon_id item.pokemon_id
  json.price item.price
  json.happiness item.happiness
  json.image_url asset_path(item.image_url)
end
