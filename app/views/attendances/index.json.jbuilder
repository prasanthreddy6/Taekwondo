json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :present_days, :total_days
  json.url attendance_url(attendance, format: :json)
end
