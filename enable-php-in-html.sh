echo -e "\e[36mCreating httpd.conf file\e[0m"
echo "AddType application/x-httpd-php .html .htm" >> httpd.conf

echo -e "\e[32mMoving the file to \e[1m\e[32m/etc/apache2/conf \e[0m"
sudo mv httpd.conf /etc/apache2/conf-available/

echo -e "\e[35mEnabling the conf file\e[0m"
sudo a2enconf httpd

echo -e "\e[34mRestarting Apache\e[0m"
sudo service apache2 restart

echo -e "\e[1m\e[31mDone\e[0m"