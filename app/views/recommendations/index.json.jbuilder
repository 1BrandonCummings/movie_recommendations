json.array!(@recommendations) do |recommendation|
  json.extract! recommendation, :id, :title, :genre, :watched, :votes, :user_id_id
  json.url recommendation_url(recommendation, format: :json)
end
