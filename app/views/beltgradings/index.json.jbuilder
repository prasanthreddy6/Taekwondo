json.array!(@beltgradings) do |beltgrading|
  json.extract! beltgrading, :id, :status, :type, :location, :event_date
  json.url beltgrading_url(beltgrading, format: :json)
end
