require 'rubygems'
require 'twilio-ruby'
require 'sinatra'
require 'newrelic_rpm'

get '/error' do
  twiml = Twilio::TwiML::Response.new do |r|
    r.Say "Something seems to be down with the magic computers. Is it the Y2k bug? Daisy, Daisy,
Give me your answer do!
I'm half crazy,
All for the love of you!
It won't be a stylish marriage,
I can't afford a carriage
But you'll look sweet upon the seat
Of a bicycle made for two. "
  end
  twiml.text
end

get '/smserror' do
  twimlsms = Twilio::TwiML::Response.new do |r|
    r.Message "Something seems to be down with the magic computers. Is it the Y2k bug? Daisy, Daisy,
Give me your answer do"
  end
  twimlsms.text
end
