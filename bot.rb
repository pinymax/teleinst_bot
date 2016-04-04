require 'telegram_bot'
require 'instagram'

bot = TelegramBot.new(token: 'Your bot token here')
message = TelegramBot::OutMessage.new
message.chat = TelegramBot::Channel.new(id: 'channel token here')


Instagram.configure do |config|
   config.client_id = "Instagram cliend id here"
   config.access_token = "Instagram access token here"
end

client = Instagram.client(:access_token => "Instagram client token here")

@array = []

if File.exist?('array.txt')
  IO.foreach('array.txt') do |line|
    @array << line
  end
else
  File.new("array.txt", "w")
end

length = client.user_recent_media.length

(0..length).each do |i|
  unless @array.include?(client.user_recent_media[i]["link"] + "\n")
    file = File.open('array.txt', "a")
    file.write(client.user_recent_media[i]["link"] + "\n")
    @array << client.user_recent_media[i]["link"]
    message.text = client.user_recent_media[i]["link"]
    message.send_with(bot)
  end
end
