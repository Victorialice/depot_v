require 'net/http'
Net::HTTP.start('localhost',3004) {|http|
    response = http.post('/api/users',
                         'name=asdf&password=asdfasdf')
}
