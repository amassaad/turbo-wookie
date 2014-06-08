# This code is designed to run with Sinatra, a lightweight ruby webapp framework
# Responds to POSTs to http://yourapp.com/reject
require 'rubygems'
require 'sinatra'
 
post '/reject' do
  whitelist = ['+16133042365', '+16138584587']
   
  if whitelist.include? params[:From]
  	"<Response><Say>Congratulations! You got through</Say></Response>"
  else
    "<Response><Reject/></Response>"
  end
end