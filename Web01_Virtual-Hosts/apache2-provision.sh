#
# Copiar ficheros de configuración de apache2 que incluyen:
#
# - apache2.conf,
# - apolo.olimpo.test.conf
# - atenea.olimpo.test.conf
#

cp /vagrant/vagrant.student/apache2/apache2.conf /etc/apache2
cp /vagrant/vagrant.student/apache2/apolo.olimpo.test.conf /etc/apache2
cp /vagrant/vagrant.student/apache2/atenea.olimpo.test.conf /etc/apache2

#
# Habilitar los servidores virtuales
#

a2ensite apolo.olimpo.test.conf
a2ensite atenea.olimpo.test.conf

#
# Reiniciar el servicio
#

systemctl restart apache2
systemctl status apache2
