json.array!(@activities) do |activity|
  json.extract! activity, :id, :actor_screen_name, :source_service_name, :source_type, :description, :permalink, :deleted
  json.url activity_url(activity, format: :json)
end
