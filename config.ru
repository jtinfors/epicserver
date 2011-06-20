require 'zlib'
lobster = Zlib::Inflate.inflate("eJx9kEEOwyAMBO99xd7MAcytUhPlJyj2 P6jy9i4k9EQyGAnBarEXeCBqSkntNXsi/ZCvC48zGQoZKikGrFMZvgS5ZHd+aGWVuWwhVF0 t1drVmiR42HcWNz5w3QanT+2gIvTVCiE1lm1Y0eU4JGmIIbaKwextKn8rvW+p5PIwFl8ZWJ I8jyiTlhTcYXkekJAzTyYN6E08A+dk8voBkAVTJQ==".delete("\n ").unpack("m*")[0])
run lambda {|env| [200, {'X-lobster'=>'true', 'Content-Type'=>'text/html'}, StringIO.new("<!doctype html><html><head><title>This server is epic</title><style>body{font-size:2em;}</style></head><body><pre>" + lobster + "</pre></body></html>") ] }
