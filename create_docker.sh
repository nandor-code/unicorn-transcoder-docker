docker kill unicorn-transcoder 2>/dev/null
docker rm unicorn-transcoder 2>/dev/null

docker create --name unicorn-transcoder \
			  --restart unless-stopped \
              -p 3000:3000 \
              -v $(pwd)/config.js:/opt/UnicornTranscoder/config.js \
                nandordocker/plex-unicorn-transcoder:latest

docker start unicorn-transcoder
