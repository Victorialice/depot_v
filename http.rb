require 'net/http'
#Net::HTTP.version_1_2   # 设定对象的运作方式
Net::HTTP.start('localhost',3004) {|http|
  response = http.post('/api/users', 'name=asdfab&password=asdfasdf')
  puts response.body
}
#require "open-uri" 
#params = {}  
#params["user"] = {name: "asdf", password: "asdfasdf"}
#uri = URI.parse("http://localhost:3004")  
#res = Net::HTTP.post_form(uri, params) 
