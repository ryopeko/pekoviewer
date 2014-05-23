class ActivityWorker
  include Sidekiq::Worker

  def perform(args)
    actor_user = ActorUser.where(actor_screen_name: args['actor_screen_name']).first

    unless actor_user
      user = User.create(name: args['actor_screen_name'])
      ActorUser.create(
        user_id: user.id,
        actor_screen_name: args['actor_screen_name'],
        source_service_name: args['source_service_name']
      )
    end

    activity = Activity.new(
      actor_screen_name: args['actor_screen_name'],
      user_id: actor_user.user.id,
      source_service_name: args['source_service_name'],
      source_type: args['source_type'],
      description: args['description'],
      permalink: args['permalink'],
      created_at: args['created_at']
    )

    logger.info "inserted activity(#{args['source_type']})" if activity.save
  end
end
