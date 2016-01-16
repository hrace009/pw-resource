json.array!(@throwables) do |throwable|
  json.extract! throwable, :id
  json.url throwable_url(throwable, format: :json)
end
