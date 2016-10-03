require 'addressable/uri'
require 'rest-client'

def index_users
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.html',
    # query_values: {
    #   'some_category[a_key]' => 'another value',
    #   'some_category[a_second_key]' => 'yet another value',
    #   'some_category[inner_inner_has][key]' => 'value'
    # }
  ).to_s

  puts RestClient.get(url)
end

def create_user(name, email)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
    ).to_s

    puts RestClient.post(url,
      { user: { name: name} }
    )
end

#index_users
create_user("Can", "asdasdas")
