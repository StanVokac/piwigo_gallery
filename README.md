# piwigo_gallery
Piwigo 2.10.2 runing on Alpine Linux, Apache 2.4 and PHP 7 with MariaDB container

# Building your own container with the latest version of available Piwigo Gallery
  - Clone repository locally (git clone https://github.com/StanVokac/piwigo_gallery.git)
  - Get the latest version of Piwigo Gallery (https://piwigo.org/download/dlcounter.php?code=latest)
  - Unzip downloaded Piwigo Gallery ZIP file to folder "www"  
  - Run container build process ( docker build -t piwigo_gallery . )
  
 # Running piwigo_gallery
  - In case, that you built your own image replace respective image reference in docker-compose.yaml (image: svokac/gallery_web:latest)
  - Run './setup.sh' for initial variables setup
  - Run 'docker-compose up -d' to start images
  - Run 'docker-compose start'

