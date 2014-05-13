json.array!(@expeditions) do |expedition|
  json.extract! expedition, :id, :grid, :call, :start_date, :end_date, :qsl_info, :more_info
  json.url expedition_url(expedition, format: :json)
end
