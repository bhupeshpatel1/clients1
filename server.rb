require 'socket'

server = TCPServer.new(4567)

socket = server.accept

socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
name = socket.gets.chomp
socket.puts "THAT'S A LOVELY NAME #{name}"

socket.close
