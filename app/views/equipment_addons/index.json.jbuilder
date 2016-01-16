json.array!(@equipment_addons) do |equipment_addon|
  json.extract! equipment_addon, :id
  json.url equipment_addon_url(equipment_addon, format: :json)
end
