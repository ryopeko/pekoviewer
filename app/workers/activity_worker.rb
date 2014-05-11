class ActivityWorker
  include Sidekiq::Worker

  def perform(args)
    activity = Activity.new(
      actor_screen_name: args['actor_screen_name'],
      source_service_name: args['source_service_name'],
      source_type: args['source_type'],
      description: args['description'],
      permalink: args['permalink'],
      created_at: args['created_at']
    )

    logger.info "inserted activity(#{args['source_type']})" if activity.save
  end
end
