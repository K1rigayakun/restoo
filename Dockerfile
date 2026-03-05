# Gunakan PHP 8.2 dengan Apache
FROM php:8.2-apache

# Install PDO MySQL extension
RUN docker-php-ext-install pdo pdo_mysql

# Copy semua file PHP ke web root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Enable mod_rewrite (opsional, untuk routing / URL clean)
RUN a2enmod rewrite

# Expose port 8080
EXPOSE 8080

# Jalankan Apache di foreground
CMD ["apache2-foreground"]
