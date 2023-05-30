sleep 10

cd /var/www/wordpress

if [ -f ./wp-config.php ]
then
    echo "wordpress already downloaded"
else
    wp core download --allow-root --path='/var/www/wordpress'
    wp config create --allow-root \
                     --dbname=$SQL_DATABASE \
                     --dbuser=$SQL_USER \
                     --dbpass=$SQL_PASSWORD \
                     --dbhost=mariadb:3306 --path='/var/www/wordpress'
    wp core install --allow-root \
                    --url=http://localhost \
                    --title="My WordPress Site" \
                    --admin_user=aachbaro \
                    --admin_password=$SQL_PASSWORD \
                    --admin_email=adam@example.com \
                    --path='/var/www/wordpress'
    wp user create pascuans pascuans@example.com --role=subscriber --user_pass=$SQL_PASSWORD --allow-root
fi


# sleep 10

# if [ -f ./wp-config.php ]
# then
# 	echo "wordpress already downloaded"
# else
#     wp config create	--allow-root \
#                         --dbname=$SQL_DATABASE \
#                         --dbuser=$SQL_USER \
#                         --dbpass=$SQL_PASSWORD \
#                         --dbhost=mariadb:3306 --path='/var/www/wordpress'
#     wp user create adam adam@example.com --role=administrator --user_pass=password --allow-root
#     wp user create pascuans pascuans@example.com --role=subscriber --user_pass=password --allow-root
# fi
# # --allow-root
