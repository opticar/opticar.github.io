@echo off
if not exist "%~dp0\_gemcache" mkdir %~dp0\_gemcache
docker run --rm -v %~dp0:/srv/jekyll -v %~dp0\_gemcache:/usr/local/bundle -p 4000:4000 -it jekyll/jekyll:3.8.5 bash