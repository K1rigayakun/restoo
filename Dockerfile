FROM php:8.2-apache

# Install PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copy file PHP
COPY . /var/www/html/

# Set working dir
WORKDIR /var/www/html/

# Enable rewrite (opsional, aman)
RUN a2enmod rewrite

EXPOSE 8080

CMD ["apache2-foreground"]
