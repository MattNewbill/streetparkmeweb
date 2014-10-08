json.array!(@parking_restrictions) do |parking_restriction|
  json.extract! parking_restriction, :id, :parking_spot_id, :cost_per_hour, :beg_time_restriction, :end_time_restriction, :time_limit_hour, :time_limit_min, :active_monday, :active_tuesday, :active_wednesday, :active_thursday, :active_friday, :active_saturday, :active_sunday
  json.url parking_restriction_url(parking_restriction, format: :json)
end
