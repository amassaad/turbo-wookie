require 'rubygems'
require 'twilio-ruby'
require 'sinatra'
 
get '/sms-reply' do
  twiml = Twilio::TwiML::Response.new do |r|
    r.Message "Hey, better to email Alex. But message received. "
  end
  twiml.text
end