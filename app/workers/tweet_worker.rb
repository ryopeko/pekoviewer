class TweetWorker
  include Sidekiq::Worker

  def perform(tweet_id, tweet_text, screen_name, created_at)
    tweet = Tweet.new(
      tweet_id: tweet_id,
      tweet_text: tweet_text,
      screen_name: screen_name,
      created_at: created_at
    )

    logger.info "inserted #{tweet.tweet_text}" if tweet.save
  end
end
