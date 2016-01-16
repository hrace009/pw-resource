json.array!(@resurrection_scrolls) do |resurrection_scroll|
  json.extract! resurrection_scroll, :id
  json.url resurrection_scroll_url(resurrection_scroll, format: :json)
end
