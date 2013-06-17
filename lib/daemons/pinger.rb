#!/usr/bin/env ruby
require File.expand_path('../../../app/workers/ping', __FILE__)
# You might want to change this
ENV["RAILS_ENV"] ||= "production"

root = File.expand_path(File.dirname(__FILE__))
root = File.dirname(root) until File.exists?(File.join(root, 'config'))
Dir.chdir(root)

require File.join(root, "config", "environment")

$running = true
Signal.trap("TERM") do 
  $running = false
end

while($running) do
  pw = PingWorker.new
  loop do
    pw.update
    sleep 60
  end
  sleep 10
end
