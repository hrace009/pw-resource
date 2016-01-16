json.array!(@elf_wings) do |elf_wing|
  json.extract! elf_wing, :id
  json.url elf_wing_url(elf_wing, format: :json)
end
