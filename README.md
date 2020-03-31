# piwigo_gallery
Piwigo 2.10.2 in Alpine Linux, Apache 2.4,  PHP 7 and external container with MariaDB

# Building with the latest version of Piwigo Gallery
  - Clone repository locally
  - Get the latest version of Piwigo Gallery (https://piwigo.org/download/dlcounter.php?code=latest)
  - Unzip ZIP file content to folder www  
  - Run container buils (docker build -t piwigo_fallery .)
  
 # Running piwigo_gallery
  - In case, that you built your own image replace source image in docker-build.yaml file by yout own image name(image: svokac/gallery_web:latest
  - Run ./setup.sh for initial variables setup
  - Run docker-compose up -d
  - Run docker-compose start


