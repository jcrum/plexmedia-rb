# 
#
require 'rubyplex'

Plex.configure do |config|
  config[:host] = '192.168.1.43'
  config[:port] = 32400
  config[:token] = "W9mbp_oYNm1xs3yhkUhw" 
end

server = Plex.server
movies = server.library('Movies').all

p movies[0].medias[0].files
