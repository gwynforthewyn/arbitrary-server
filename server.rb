#!/usr/bin/env ruby

require "gserver"

class ChatServer < GServer
  def initalize(*args)
    super(*args)
  end

  def serve(io)
    while (true)
      io.puts "Welcome to the real world."
    end
  end
end


server = ChatServer.new(11223)
server.start

sleep 15

server.shutdown