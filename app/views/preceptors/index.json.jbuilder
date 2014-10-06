json.array!(@preceptors) do |preceptor|
  json.extract! preceptor, :id, :name, :center, :abyasi_id, :place, :role
  json.url preceptor_url(preceptor, format: :json)
end
