Lita.configure do |config|
  config.robot.log_level   = :info
  config.robot.name        = ENV["BOT_NAME"] || 'lita'

  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"] || 4567

  if ENV["ADAPTER"] == 'idobata'
    config.robot.adapter = :idobata
    config.adapters.idobata.api_token = ENV["API_TOKEN"]
  else
    config.robot.adapter = :shell
  end

  config.handlers.irkit.deviceid  = ENV["IRKIT_DEVICEID"]
  config.handlers.irkit.clientkey = ENV["IRKIT_CLIENTKEY"]

  config.handlers.talk.docomo_api_key      = ENV['DOCOMO_API_KEY']
  config.handlers.talk.docomo_character_id = 20
end
