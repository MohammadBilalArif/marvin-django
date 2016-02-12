#!/bin/bash
sudo ./Instalacion.sh
mysql -u root -p < marvin/init_database.sql
cd ~
git clone https://github.com/programa-stic/Marvin-static-Analyzer.git
cd Marvin-static-Analyzer
sh ./install.sh
echo "export CLASSPATH=$CLASSPATH:/usr/share/java/weka.jar" >> ~/.bashrc

# Setup de la app web
cd ~
cd marvin-django/marvin
python manage.py migrate
python manage.py createsuperuser


