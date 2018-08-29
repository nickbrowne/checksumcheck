require 'socket'

s = TCPSocket.new('localhost', 1234)

begin
  (0..999999).lazy.each do |i|
    s.puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa #{i}"
    print "."
    sleep 1
  end
ensure
  s.close
end
