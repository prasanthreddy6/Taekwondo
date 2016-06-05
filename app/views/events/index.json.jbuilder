json.array!(@events) do |event|
  json.extract! event, :id, :name, :type, :location, :event_date, :team_manager, :team_coach, :team_officials, :team_positions
  json.url event_url(event, format: :json)
end
