require "json"
require "sinatra"
require "intercom"

# Useful tools for manipulating JSON
## https://codebeautify.org/jsonminifier
## https://codebeautify.org/javascript-escape-unescape

# Create an Intercom client to make REST API calls
access_token = ENV['TOKEN']
intercom = Intercom::Client.new(token: access_token)

post'/' do # This section listens for the initial post from Intercom and retruns the default state of the card when the app is first loaded by the messenger
  aircallCard = File.read('cards/aircall/main.json')
  aircallCard # Return the card
end

post '/submit' do # When a user presses a button in your app, return a card
  aircallCalling = File.read('cards/aircall/calling.json')
  aircallCalling # Return the card
end

post'/configure' do
  # To Do | Build a configure card to allow admins to select WHICH card is inserted.
end

get '/' do
  "👋 Check out the GH Repo <a href='https://github.com/christmmurphy/partner-app-showcase'>here</a>"
end
