json.array!(@championships) do |championship|
  json.extract! championship, :id, :name, :type, :weight_category, :group, :poomsae_paticipation, :events, :fight_won, :fight_played, :rewards, :medal_g, :medal_s, :medal_b, :medal_n
  json.url championship_url(championship, format: :json)
end
