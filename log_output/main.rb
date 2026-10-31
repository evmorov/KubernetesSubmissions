require 'securerandom'

$stdout.sync = true

uuid = SecureRandom.uuid

while true do
  timestamp = Time.now.utc.iso8601(3)
  puts "#{timestamp}: #{uuid}"
  sleep 5
end
