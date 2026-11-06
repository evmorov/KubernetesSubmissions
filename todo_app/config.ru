require "rackup"
require "roda"

class App < Roda
  route do |r|
    r.root do
      "Hello"
    end
  end
end

app = App.freeze.app
port = ENV.fetch("PORT", 9292)

puts "Server started in port #{port}"

Rackup::Handler.default.run(app, Port: port)
