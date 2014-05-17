module ActivitiesHelper
  def service_image_tag(activity)
    image_tag("service_icons/#{activity.source_service_name}.png")
  end
end
