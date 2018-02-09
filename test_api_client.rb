require 'oj'
require 'faraday'
 
client = Faraday.new(url: 'http://localhost:3000') do |config|
  config.adapter  Faraday.default_adapter
end
 
# response = client.post do |req|
#   req.url '/api/v1/sites'
#   req.headers['Content-Type'] = 'application/json'
#   req.body = '{ "site": {"name": "Lenta.ru"} }'
# end

response = client.put do |req|
  req.url '/api/v1/sites/1.json'
  req.headers['Content-Type'] = 'application/json'
  req.body = '{ "site": {"name": "lentach.ru"} }'
end

# response = client.get do |req|
#   req.url '/api/v1/sites/1.json'
#   req.headers['Content-Type'] = 'application/json'
# end

# response = client.delete do |req|
#   req.url '/api/v1/sites/1.json'
#   req.headers['Content-Type'] = 'application/json'
# end

# response = client.get do |req|
#   req.url '/api/v1/sites/1.json'
#   req.headers['Content-Type'] = 'application/json'
#   req.body = '{ "page": {"start_date": "2018-02-08 10:41:08", "end_date": "2018-02-08 10:41:08"} }'
# end


puts Oj.load(response.body)
puts response.status