Lita.configure do |config|
  config.robot.log_level   = :info
  config.robot.adapter     = ENV["ADAPTER"] ? ENV["ADAPTER"].to_sym : :shell
  config.robot.name        = ENV["BOT_NAME"] || 'lita'
  config.adapter.api_token = ENV["API_TOKEN"]

  config.redis.url = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]
end
