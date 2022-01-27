# piwigo_gallery
Piwigo 2.10.2 in Alpine Linux, Apache 2.4,  PHP 7 and external container with MariaDB

# Building own container with the latest version of Piwigo Gallery
  - Clone repository locally (git clone https://github.com/StanVokac/piwigo_gallery.git)
  - Get the latest version of Piwigo Gallery (https://piwigo.org/download/dlcounter.php?code=latest)
  - Unzip ZIP file content to folder www  
  - Run container build (docker build -t piwigo_gallery .)
  
 # Running piwigo_gallery
  - In case, that you built your own image replace used image by your own one in docker-compose.yaml (image: # svokac/gallery_web:latest)
  - Run './setup.sh' for initial variables setup
  - Run 'docker-compose up -d' to start images
  - Run 'docker-compose start'

