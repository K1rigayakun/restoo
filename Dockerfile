# Gunakan PHP versi stabil
FROM php:8.2-apache

# Install PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copy semua file ke web root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Enable mod_rewrite untuk Apache (optional tapi sering dipakai)
RUN a2enmod rewrite

# Expose port 8080
EXPOSE 8080

# Jalankan Apache di foreground
CMD ["apache2-foreground"]
