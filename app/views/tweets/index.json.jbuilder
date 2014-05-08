json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :tweet_id, :screen_name, :tweet_text, :deleted
  json.url tweet_url(tweet, format: :json)
end
