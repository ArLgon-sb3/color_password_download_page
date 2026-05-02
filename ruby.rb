require 'sinatra'
require 'net/http'
require 'uri'
require 'json'
get '/' do
  erb :index
end

post '/result' do

color = params[:color].to_s.delete('#')
colorr = color[0,2]
colorg = color[2,2]
colorb = color[4,2]
puts colorr.to_i(16)
puts color
if (colorr.to_i(16) - 244).abs < 16 && (colorg.to_i(16) - 229).abs < 16 && (colorb.to_i(16) - 17).abs < 16
erb :result
else
  erb :result2
  
end
end
