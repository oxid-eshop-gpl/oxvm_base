<VirtualHost *:80>
    ServerName xhgui.local
    DocumentRoot /var/www/xhgui/webroot

    <Directory /var/www/xhgui/webroot>
    Options Indexes FollowSymLinks MultiViews
    AllowOverride All
    Order allow,deny
    Allow from all
    Require all granted
    </Directory>
</VirtualHost>