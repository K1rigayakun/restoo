FROM php:8.2-apache

# Install PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copy semua file PHP
COPY . /var/www/html/

WORKDIR /var/www/html/

# Enable mod_rewrite (opsional)
RUN a2enmod rewrite

EXPOSE 8080

CMD ["apache2-foreground"]
