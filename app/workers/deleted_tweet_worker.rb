class DeletedTweetWorker
  include Sidekiq::Worker
  sidekiq_options retry: 3

  def perform(tweet_id)
    tweet = Tweet.where(tweet_id: tweet_id).first or raise "Tweet (#{tweet_id}) not found"

    logger.info "deleted #{tweet_id}" if tweet.update_attributes!(deleted: true)
  end
end
