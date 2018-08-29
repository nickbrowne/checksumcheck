require 'socket'

s = TCPSocket.new('localhost', 1234)

(0..999999).lazy.each do |i|
  s.puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa #{i}"
  print "."
  # s.close
  sleep 1
end
