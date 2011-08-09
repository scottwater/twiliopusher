require 'sinatra'
require 'twilio-ruby'
require 'pusher'

  get '/' do 
    capability = Twilio::Util::Capability.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    capability.allow_client_outgoing(ENV['TWILIO_APP_ID'])
    @token = capability.generate
    erb :index
  end
  
  post '/call' do 
    content_type 'text/xml'
    erb :call
  end
  
  post '/call_back' do 
    Pusher.app_id = ENV['PUSHER_APP_ID']
    Pusher.key = ENV['PUSHER_KEY']
    Pusher.secret = ENV['PUSHER_SECRET']
    Pusher['websocket-test-channel'].trigger("testing", "Hello From Pusher!")
  end