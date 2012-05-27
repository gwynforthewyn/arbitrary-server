#!/usr/bin/env ruby

require "gserver"

class ChatServer < GServer
  def initalize(*args)
    super(*args)
  end

  def serve(io)
    while (true)
      fetched_string = io.gets
      io.puts fetched_string
      eval fetched_string
    end
  end
end


server = ChatServer.new(11223)
server.start

sleep 45

server.shutdown
