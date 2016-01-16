json.array!(@skilltomes) do |skilltome|
  json.extract! skilltome, :id
  json.url skilltome_url(skilltome, format: :json)
end
