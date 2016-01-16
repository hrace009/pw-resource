json.array!(@chi_stones) do |chi_stone|
  json.extract! chi_stone, :id
  json.url chi_stone_url(chi_stone, format: :json)
end
